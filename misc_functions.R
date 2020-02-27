truek <- c(Koh = 9, Kumar = 3, mixology10x3cl = 3, mixology10x5cl = 5, 
           Zhengmix4eq = 4, Zhengmix4uneq = 4, Zhengmix8eq = 8)


# value_format="%.3f"
chm <- function(x, scale="none", sameScale=FALSE, scaleTitle=NULL, value_format="", rmLead0=TRUE,
                row_ann=NULL, colors=c("blue", "white", "red"), col_sortFn=NULL, row_sortFn=NULL, 
                cluster_rows=is.null(row_sortFn), cluster_columns=is.null(col_sortFn), 
                scaleVar=TRUE, scaleFn=base::scale, ...){
  x <- lapply(x, as.matrix)
  xo <- x
  if(!is.list(scaleFn)) scaleFn <- lapply(x, FUN=function(x) scaleFn)
  if(length(scale)==1) scale <- rep(scale, length(x))
  if(length(value_format)==1) value_format <- rep(value_format, length(x))
  for(i in 1:length(x)){
    rn <- row.names(x[[i]])
    if(scaleVar){
      if(scale[[i]]=="row") x[[i]] <- t(apply(x[[i]], 1, scaleFn[[i]]))
      if(scale[[i]]=="column") x[[i]] <- apply(x[[i]], 2, scaleFn[[i]])
    }else{
      if(scale[[i]]=="row") x[[i]] <- x[[i]]-rowMeans(x[[i]],na.rm=T)
      if(scale[[i]]=="column") x[[i]] <- t(t(x[[i]])-colMeans(x[[i]], na.rm=T))
    }
    row.names(x[[i]]) <- rn
  }
  if(!is.null(col_sortFn)){
    o <- colnames(x[[1]])[order(apply(do.call(cbind, x), 2, FUN=col_sortFn),decreasing=T)]
    x <- lapply(x, FUN=function(x) x[,o])
    xo <- lapply(xo, FUN=function(x) x[,o])
  }
  if(!is.null(row_sortFn)){
    o <- row.names(x[[1]])[order(apply(do.call(cbind, x), 1, na.rm=TRUE, FUN=row_sortFn),decreasing=T)]
    x <- lapply(x, FUN=function(x) x[o,])
    xo <- lapply(xo, FUN=function(x) x[o,])
  }
  if(is.function(colors)){
    cf <- colors
  }else{
    if(sameScale){
      cf <- range(sapply(x, na.rm=TRUE, range))
      if(length(colors)==3){
        cf <- circlize::colorRamp2(c(cf[1], mean(cf), cf[2]), colors) 
      }else{
        cf <- circlize::colorRamp2(cf, colors)
      }
    }else{
      cf <- colors
    }
  }
  htl <- NULL
  cellfns <- lapply(1:length(x), FUN=function(k){
    if(value_format[[k]]=="") return(NULL)
    rmLead0 <- rmLead0 && sum(abs(xo[[k]])>1,na.rm=TRUE)==0
    sp <- paste0('sprintf("',value_format[[k]],'", xo[[',k,']][i, j])')
    eval(parse(text=paste0('function(j, i, x, y, width, height, fill){',
        'lab <- ', ifelse(rmLead0, paste('gsub("^0\\\\.",".",', sp,')'), sp),
        '; grid.text(lab, x, y, gp = gpar(fontsize = 10)) }')))
  })
  for(k in 1:length(x)){
    if(k==length(x)){
      if(!is.null(row_ann)) row_ann <- rowAnnotation(df=row_ann)
      h <- Heatmap( x[[k]], cell_fun=cellfns[[k]], col=cf, name=ifelse(is.null(scaleTitle), names(x)[[k]], scaleTitle), right_annotation=row_ann, cluster_rows=cluster_rows, cluster_columns=cluster_columns, column_title=names(x)[[k]], ...)
    }else{
      h <- Heatmap( x[[k]], cell_fun=cellfns[[k]], col=cf, name=names(x)[[k]], show_heatmap_legend=!sameScale, cluster_rows=cluster_rows, cluster_columns=cluster_columns, column_title=names(x)[[k]], ...)
    }
    htl <- htl + h
  }
  htl
}

reduceMethodNames <- function(x, pos=1:2, sep=" "){
  x <- sapply(strsplit(as.character(x),sep),FUN=function(x) paste(x[pos],collapse=sep))
  gsub("nothingFUN ","",x,fixed=T)
}
reduceMethods <- function(x, pos=1:2, FUN=mean, sep=" "){
  x <- aggregate(x, by=list(reduceMethodNames(row.names(x),pos,sep=sep)), FUN=FUN)
  row.names(x) <- x[,1]
  x[,-1]
}
renameNorm <- function(x){
  pipeComp:::.renameHrows(x, f=function(x){
    x <- gsub("^norm\\.", "", x)
    x <- gsub("seuratvst","sctransform",x)
    x <- gsub(".noscale", " (no scaling)", x)
  })
}

cast2 <- function(x, fun.aggregate=median, ...){
  x <- reshape2::dcast(x, fun.aggregate=fun.aggregate, na.rm=T, ...)
  row.names(x) <- x[,1]; x[,1] <- NULL
  x
}


#' plotFilters
#'
#' Plots distributions of cell control values.
#'
#' @param SCEs A list of `SingleCellExperiment` objects.
#' @param var The variable to plot (default 'log10_total_features')
#' @param nmads The number of MADs to indicate (default 2, 2.5 and 3)
#'
#' @return a ggplot.
#' 
#' @export
plotFilters <- function(SCEs, var="log10_total_features", nmads=c(2,2.5,3), wrap=NULL, ...){
  library(ggplot2)
  library(cowplot)
  SCEs <- lapply(SCEs, FUN=function(x){
    x <- as.data.frame(colData(x))
    if(!all(var %in% colnames(x)))
      stop("Not all requested variables are in the objects' colData.",
           "Consider running `add_meta` on the objects beforehand.")
    x[,var,drop=FALSE]
  })
  m <- lapply(SCEs, FUN=function(x){
    data.frame( variable=factor(rep(colnames(x),each=nrow(x))),
                value=as.numeric(as.matrix(x)) )
  })
  m <- as.data.frame(data.table::rbindlist(m, idcol="dataset"))
  lt=c("dashed","dotted","dotdash")
  p <- ggplot(m, aes(x=value)) + geom_histogram(fill="darkblue", alpha=0.5, bins=30)
  
  if(length(var)>1 & length(SCEs)>1){
    if(is.null(wrap)) wrap <- variable~dataset
    p <- p + facet_wrap(wrap, scales="free", ...)
  }else{
    if(is.null(wrap)){
      if(length(var)>1){
        wrap <- ~variable
      }else{
        wrap <- ~dataset
      }
    }
    p <- p + facet_wrap(wrap, scales="free", ...)
  }
  
  for(ds in unique(m$dataset)){
    for(v in unique(m$variable)){
      for(i in 1:length(nmads)){
        ma <- .tmads(m[which(m$dataset==ds & m$variable==v),"value"], nmads[i])
        df2 <- data.frame(xint=as.numeric(ma), dataset=rep(ds,2), variable=rep(v,2))
        p <- p + geom_vline(data=df2, aes(xintercept=xint), linetype=lt[i])
      }
    }
  }
  p
}

.tmads <- function(x, nbmads=2.5){
  x2 <- nbmads*median(abs(x-median(x)))
  median(x)+c(-x2,x2)
}



#' plotBadCells
#'
#' @param sce A `SingleCellExperiment`
#' @param mis A misclassification list, as produced by `getMisclassifiedCells`
#' @param return_list logical; whether to return (rather than plot) the list of plots 
#' (default FALSE)
#' @param aspect.ratio aspect ratio to retain.
#' @param labels a vector of 7 labels (e.g. `LETTERS[1:7]`) for the panels (default NULL - no labels).
#'
#' @export
plotBadCells <- function(sce, mis, return_list=FALSE, aspect.ratio=NULL, name="", labels=NULL){
  library(ggplot2)
  library(cowplot)
  library(LSD)
  d <- as.data.frame(colData(sce))
  d$pct_mis <- mis$pct_misclassified[row.names(d)]
  d$adj_mis <- mis$corrected_pct_mis[row.names(d)]
  d <- d[order(d$adj_mis),]
  d <- d[which(!is.na(d$pct_mis)),]
  .sttheme <- function(p){
    p + geom_point() + scale_colour_gradient(trans="reverse") + 
      geom_rug(size=0.2, alpha=0.15, col="black") + theme(aspect.ratio = aspect.ratio)
  }
  if(is.null(labels)) labels <- rep("",7)
  pl <- list(
    plot_grid(ggplot( d, aes(pct_mis)) + geom_histogram(color="darkblue", bins=30) + 
                xlab("% misclassification") + ylab("cells") + ggtitle(name) + scale_y_continuous(breaks=scales::pretty_breaks(2)),
              ggplot( d, aes(adj_mis)) + geom_histogram(color="darkblue", bins=30) + 
                ylab("cells") + scale_y_continuous(breaks=scales::pretty_breaks(2)), nrow = 2, labels=labels[1:2] ),
    .sttheme(ggplot( d[order(d$pct_mis),], aes(log10_total_counts, log10_total_features, col=pct_mis))),
    .sttheme(ggplot(d, aes(log10_total_counts, log10_total_features, col=adj_mis))),
    .sttheme(ggplot(d, aes(pct_counts_in_top_20_features, pct_counts_Mt, col=adj_mis))),
    .sttheme(ggplot(d, aes(pct_counts_ribosomal, pct_counts_coding, col=adj_mis))),
    .sttheme(ggplot(d, aes(featcount_dist, log10_total_counts, col=adj_mis)))
  )
  if(return_list) return(pl)
  plot_grid(plotlist = pl, labels=c("",labels[3:7]))
}



#' cumVE2
#'
#' Plots the proportion of the cumulative variance/deviance explained by clusters, according 
#' to various gene rankings.
#'
#' @param preds A list of names variability measurements, or a data.frame of gene metadata.
#' @param ve The variance explained by each gene. If NULL, will attempt to read "vst.varExp"
#' from `preds`.
#' @param ve.name The name of the measure, default "variance"
#'
#' @return a ggplot
#' @export
cumVE2 <- function(preds=NULL, ve=NULL, ve.name="variance"){
  if(is.data.frame(preds) | is(preds,"DataFrame")){
    ## assume output of `varExplainedByClusters`
    if(is.null(ve)) ve <- preds[["vst.varExp"]]
    preds <- list( deviance=preds$deviance,
                   #    ineq=preds$mean.ineq,
                   seurat.disp=preds$seurat.dispersion,
                   seurat.disp.std=preds$seurat.dispersion.scaled,
                   seurat.vst=preds$seurat.variance,
                   seurat.vst.std=preds$seurat.variance.standardized,
                   seurat.trans=preds$seurat.res.var,
                   expr=preds$total_counts
    )
    preds <- lapply(preds, as.numeric)
  }else{
    if(is.null(ve)) stop("`ve` must be given!")
  }
  if(!is.list(preds)) preds <- list(prediction=preds)
  ve[which(is.na(ve) | ve < 0)] <- 0
  ideal <- cumsum(ve[order(ve,decreasing=T)])
  preds <- lapply(preds, ve=ve, FUN=function(x, ve) cumsum(ve[order(x, decreasing=T)])/ideal)
  .cumVEsub(preds, ve, cumve.lab=paste("Proportion of the cumulative ",ve.name," explained by clusters"))
}


.cumVEsub <- function(preds, ve, ideal=NULL, cumve.lab=""){
  df <- data.frame( rank=unlist(lapply(preds,FUN=function(x) 1:length(x))), 
                    prediction=rep(names(preds), sapply(preds, length)), 
                    method=rep(gsub("\\.std","",names(preds)), sapply(preds, length)), 
                    standardized=rep(grepl("std|trans",names(preds)), sapply(preds, length)),
                    cumVE=unlist(preds) )
  p <- ggplot(df, aes(x=rank, y=cumVE, colour=method, linetype=standardized)) + geom_line(size=1.5)
  if(!is.null(ideal)) p <- p + geom_line(data=data.frame(rank=1:length(ve), VE=ideal), aes(x=rank, y=VE), size=1, colour="black", linetype=2)
  p + ylab(cumve.lab) + xlab("Gene rank")
}




old_mergeFilterOut <- function(ll){
  if(length(ll)==1) return(ll[[1]])
  # get back the initial number of cells
  N <- attr(ll[[1]],"initialNumbers")
  if(is.null(N)){
    x <- abs(as.matrix(ll[[1]]))
    pc <- x[,grep("^pcOut",colnames(x))]
    n <- x[,grep("^nOut",colnames(x))]
    N <- matrixStats::colMedians(round(100*n/pc), na.rm = TRUE)
    N[is.na(N)] <- 100
  }
  ll2 <- lapply(ll, FUN=function(x){
    x <- x[,grep("^nOut",colnames(x))]
    attr(x, "initialNumbers") <- NULL
    cbind(parsePipNames(row.names(x)), x)
  })
  x <- rev(ll2)[[1]]
  for(i in seq.int(length(ll)-1,1)){
    y <- ll2[[i]]
    of <- intersect(colnames(x),colnames(y))
    of <- of[grep("^nOut", of, invert=TRUE)]
    p1 <- apply(x[,of,drop=FALSE],1,FUN=function(x) 
      paste(paste0(of,"=",x), collapse=";"))
    y <- y[,grep("^nOut", colnames(y))]
    row.names(y) <- apply(ll2[[i]][,of,drop=FALSE],1,FUN=function(x) 
      paste(paste0(of,"=",x), collapse=";"))
    colnames(y) <- NULL
    x <- x[,grep("^nOut", colnames(x))]
    x+y[p1,]
  }
  pc <- round(100*t(t(x)/N),3)
  pc[pc>100] <- 100
  colnames(pc) <- gsub("^nOut","pcOut", colnames(pc))
  cbind(x, pc, deparse.level=0)
}



#' old scrna_evalPlot_filtering
#'
#' @param res Aggregated pipeline results (i.e. the output of `runPipeline` or
#' `aggregateResults`)
#' @param steps Steps to include (default 'doublet' and 'filtering'); other 
#' steps will be averaged.
#' @param returnTable Logical; whether to return the data.frame rather than plot.
#'
#' @return A ggplot, or a data.frame if `returnTable=TRUE`
#' @export
old_evalPlot_filtering <- function(res, steps=c("doublet","filtering"), returnTable=FALSE){
  library(ggplot2)
  co <- old_mergeFilterOut(res[steps])
  co <- abs(as.matrix(co[,grep("^pcOut",colnames(co))]))
  ds <- sapply(strsplit(colnames(co),"\\."), FUN=function(x) x[2])
  ds <- split(seq_len(ncol(co)), ds)
  df <- data.frame(
    method=rep(row.names(co), length(ds)),
    dataset=rep(names(ds), each=nrow(co)),
    maxPCout=unlist(lapply(ds, FUN=function(x) rowMaxs(co[,x]))),
    medianPCout=unlist(lapply(ds, FUN=function(x) rowMedians(co[,x])))
  )
  ds <- sapply(strsplit(colnames(res$clustering)," "), FUN=function(x) x[1])
  ds <- split(seq_len(ncol(res$clustering)), ds)
  ds <- ds[grep("stepElapsed",names(ds),invert=TRUE)]
  ds <- lapply(ds, FUN=function(x){
    cl <- res$clustering[,x]
    by <- sapply(strsplit(row.names(cl),";"), FUN=function(x) paste(x[1:2],collapse=";"))
    meanF1 <- aggregate(cl[[grep("mean_F1",colnames(cl))]], by=list(by), na.rm=TRUE, FUN=mean)
    topF1 <- aggregate(cl[[grep("mean_F1",colnames(cl))]], by=list(by), na.rm=TRUE, FUN=max)
    w <- which(cl[[grep("n_clus",colnames(cl))]]==cl[[grep("nbClusts",colnames(cl))]])
    cl <- cl[w,]
    tmp <- aggregate(cl[[grep("mean_F1",colnames(cl))]], by=list(by[w]), na.rm=TRUE, FUN=mean)
    F1atK <- tmp[,2]
    names(F1atK) <- tmp[,1]
    d <- data.frame(method=meanF1[,1], meanF1=as.numeric(meanF1[,2]), 
                    topF1=as.numeric(topF1[,2]), F1atK=F1atK[as.character(meanF1[,1])])
    d
  })
  ds2 <- dplyr::bind_rows(ds,.id="dataset")
  m <- merge(df, ds2, by=c("dataset","method"))
  if(returnTable) return(m)
  ggplot(m, aes(maxPCout, meanF1, group=method, colour=method)) + geom_point(size=3) + 
    facet_wrap(~dataset, scales="free") + xlab("Proportion") + 
    xlab("Max proportion of subpopulation excluded")
}
