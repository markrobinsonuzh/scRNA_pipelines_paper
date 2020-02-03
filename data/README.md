# Compiled pipeline results

This folder contains the aggregated pipeline results. Unless stated otherwise,
they were used with the default `PipelineDefinition`, i.e. `pipeComp::scrna_seurat_pipeline()`.

A number of different runs were made with varying set of alternatives; they are presented in the different sections below, and the files saved separately. All method wrappers are defined in the [pipeComp package](https://github.com/plger/pipeComp/blob/master/inst/extdata/scrna_alternatives.R) (or accessible through `system.file("extdata/scrna_alternatives.R", package="pipeComp")`) or, for those not widely used, defined below.

***

## Filtering

Saved in `results_filtering.rds` :

```{r}
nofilter <- function(x) seWrap(x)

filt.veryStringent <- function(x){
  library(scater)
  if(!("featcount_dist" %in% colnames(colData(x)))) x <- add_meta(x)
  filters <- c( "log10_total_counts:both:2",
                "log10_total_features:both:2",
                "pct_counts_Mt:both:2",
                "pct_counts_in_top_20_features:both:2" )
  out <- lapply(strsplit(filters,":"), FUN=function(f){
    which(isOutlier(x[[f[1]]], log=FALSE,
                    nmads=as.numeric(f[3]), 
                    type=f[2] ))
  })
  x <- x[,-unique(unlist(out))]
  seWrap(x)
}

alternatives <- scrna_seurat_defAlternatives(list(
  doubletmethod=c("none","doublet.scDblFinder"),
  filt=c("nofilter","filt.lenient","filt.default","filt.stringent","filt.veryStringent", "filt.pca","filt.pca2"),
  norm=c("norm.seurat"),
  dims=c(10, 15, 20, 30),
  resolution=c(0.005,0.01,0.02,0.05,0.1,0.15,0.2,0.3,0.4,0.5,0.8,1,1.2,1.5,2,4)
))
```

<br/><br/>

## Normalization

Saved in `results_norm.rds` :

```{r}
norm.seurat.mt_regress <- function(x){
  norm.seurat(x,"pct_counts_Mt")
}
norm.seurat.feat_regress <- function(x){
  norm.seurat(x,"log10_total_features")
}
norm.seurat.feat_mt_regress <- function(x){
  norm.seurat(x,c("pct_counts_Mt","log10_total_features"))
}


norm.stableG <- function(x, type="CytosolicRibosome", ag="median", topN=50, vars=NULL, noscale=FALSE){
  gl <- readRDS("~/pipComp/stable_genes.rds")
  g2 <- unlist(lapply(gl[[type]], FUN=function(g){
          grep(paste0(g,"\\.|",g,"$"),row.names(x),value=TRUE)
        }))
  if(length(g2)==0){
    # genes not found (simulated datasets) - we use all
    g2 <- row.names(x)
  }
  if(length(g2)>topN){
    rm <- rowMedians(as.matrix(x@assays$RNA@counts[g2,]))
    g2 <- g2[order(rm,decreasing=TRUE)[1:topN]]
  }
  nf <- switch( ag,
                sum=Matrix::colSums(x@assays$RNA@counts[g2,]),
                median=colMedians(as.matrix(x@assays$RNA@counts[g2,])))
  nf[which(nf==0)] <- min(nf[which(nf>0)])
  nf <- as.numeric(nf/mean(nf))
  en <- t(t(as.matrix(x@assays$RNA@counts))/nf)
  x <- SetAssayData(x, slot="data", new.data=log1p(en))
  if(noscale){
    x <- SetAssayData(x, slot="scale.data", as.matrix(GetAssayData(x)))
  }else{
    x <- ScaleData(x, verbose=FALSE, vars.to.regress=vars)
  }
  x
}

norm.stableGsum <- function(x){
  norm.stableG(x, ag="sum")
}
norm.stableG.nucleus <- function(x){
  norm.stableG(x, type="Nucleus")
}


alternatives <- list(
  doubletmethod=c("doublet.scDblFinder"),
  filt=c("filt.lenient"),
  norm=c("norm.seurat", "norm.seuratvst"),
  sel=c("sel.vst"),
  selnb=2000,
  dr=c("seurat.pca"),
  clustmethod=c("clust.seurat"),
  maxdim=50,
  dims=c("elbow", "pcaOtpmPointwise.max", "pcaLocal.maxgap", "jackstraw.elbow"),
  k=20,
  steps=4,
  resolution=c(0.005,0.01,0.02,0.05,0.1,0.15,0.2,0.3,0.4,0.5,0.8,1,1.2,1.5,2,4),
  min.size=50
)
```

<br/><br/>

## Feature selection

Saved in `results_selection.rds` :

```{r}
alternatives <- scrna_seurat_defAlternatives(list(
  doubletmethod=c("doublet.scds"),
  filt=c("filt.lenient"),
  norm=c("norm.seurat","norm.seuratvst"),
  sel=c("devianceExplained", "sel.vst", "sel.deviance", "sel.expr", "vst.varExp", 
        "seurat.dispersion", "seurat.dispersion.scaled", "seurat.variance",
        "seurat.variance.standardized"),
  selnb=c(1000,2000,3000,4000,6000),
  dims=c(10, 15, 20, 30, 50),
  resolution=c(0.005,0.01,0.02,0.05,0.1,0.15,0.2,0.3,0.4,0.5,0.8,1,1.2,1.5,2,4)
))
```

<br/><br/>

## Dimensional reduction (PCA)

Two runs with the following sets of alternatives were aggregated (saved in `results_dimred.rds`) :

```{r}
alternatives <- list(
  doubletmethod=c("doublet.scds"),
  filt=c("filt.default"),
  norm=c("norm.none"),
  sel=c("sel.deviance"),
  selnb=2000,
  dr=c("seGlmPCA","seGlmPCA.noweight"),
  maxdim=30,
  dims=c(5,10,15,20),
  clustmethod=c("clust.seurat"),
  k=20,
  steps=4,
  resolution=c(0.001,0.005,0.01,0.02,0.05,0.1,0.15,0.2,0.3,0.4,0.5,0.8,1,1.2,1.5,2,4,6),
  min.size=50
)
```

```{r}
alternatives <- list(
  doubletmethod=c("doublet.scds"),
  filt=c("filt.default"),
  norm=c("norm.seurat","norm.seurat.noscale", "norm.seuratvst"),
  sel=c("sel.vst"),
  selnb=2000,
  dr=c("seurat.pca","seurat.pca.noweight","scran.denoisePCA","scran.denoisePCA.lowrank"),
  maxdim=30,
  dims=c(5,10,15,20),
  clustmethod=c("clust.seurat"),
  k=20,
  steps=4,
  resolution=c(0.001,0.005,0.01,0.02,0.05,0.1,0.15,0.2,0.3,0.4,0.5,0.8,1,1.2,1.5,2,4,6),
  min.size=50
)
```

<br/><br/>

## Dimensionality

We first modified the default pipeline to add a separate step estimating the number of dimensions:

```{r}
pd <- scrna_seurat_pipeline()
fns <- c(pd@functions[1:5], 
         list(
           dimensionality=function(x, dims){
            dims <- pipeComp:::.parseDims(x,dims)
            x@misc$dimensionality <- max(2,dims,na.rm=TRUE)
            x
           },
           clustering=function(x, clustmethod, k, steps, resolution, min.size){
            tl <- x$phenoid
            x <- get(clustmethod)(x, dims=x@misc$dimensionality, resolution=resolution, 
                                  k=k, steps=steps, min.size=min.size)
            list( x=x, intermediate_return=evaluateClustering(x,tl) )
          }))
pd2 <- PipelineDefinition(fns)
pd2@evaluation$dimensionality <- function(x){
  evaluateDimRed(x, x$phenoid, n=x@misc$dimensionality, covars = list())
}
pd2@aggregation[6:7] <- pd@aggregation[5:6]
```

We then ran two sets of analyses, saved respectively in `results_dimensionality.rds` 
and `results_dimensionality2.rds` (merged in `main_figures/dimensionality.Rmd`), the first with the following alternatives:

```{r}
alternatives <- list(
  doubletmethod=c("none", "doublet.scds"),
  filt=c("filt.default"),
  norm=c("norm.seurat", "norm.seuratvst"),
  sel=c("sel.vst"),
  selnb=2000,
  dr=c("seurat.pca"),
  maxdim=30,
  dims=c("elbow", "pcaOtpmPointwise.max", "pcaLocal.maxgap", "maxLikGlobal", "jackstraw.elbow"),
  clustmethod=c("clust.seurat"),
  k=20,
  steps=4,
  resolution=c(0.001,0.005,0.01,0.02,0.05,0.1,0.15,0.2,0.3,0.4,0.5,0.8,1,1.2,1.5,2,4,6),
  min.size=50
)
```

The second is identical except for the `dims` alternatives:
```{r}
alternatives$dims <- c("elbow", "pcaOtpmPointwise.max", "pcaLocal.maxgap", 
                        "maxLikGlobal", "essLocal.a", "essLocal.b")
```

<br/><br/>

## Clustering

Saved in `results_clust_2.rds` :

```{r}
alternatives <- list(
  doubletmethod=c("doublet.scds"),
  filt=c("filt.default"),
  norm=c("norm.seurat","norm.seuratvst"),
  sel=c("sel.vst"),
  selnb=2000,
  dr=c("seurat.pca"),
  maxdim=50,
  dims=c("maxLikGlobal"),
  clustmethod=c("clust.seurat","clust.scran","clust.scran.fg"),
  k=c(5,10,12,14,16,18,20,22,25,28,35),
  steps=c(2:12,15,20,30),
  resolution=c(0.0001,0.001,0.005,0.01,0.02,0.05,0.1,0.15,0.2,0.3,0.4,0.5,0.8,1,1.2,1.5,2,4,6),
  min.size=20
)
```

