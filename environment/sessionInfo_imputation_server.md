# Session info - imputation on server

Tools run on server: `ALRA`, `DCA`, `DrImpute`, `ENHANCE`.


```r
devtools::session_info()
```

```
## ─ Session info ──────────────────────────────────────────────────────────
##  setting  value                       
##  version  R version 3.6.0 (2019-04-26)
##  os       Ubuntu 16.04.6 LTS          
##  system   x86_64, linux-gnu           
##  ui       X11                         
##  language (EN)                        
##  collate  en_CA.UTF-8                 
##  ctype    en_CA.UTF-8                 
##  tz       Europe/Zurich               
##  date     2020-02-04                  
## 
## ─ Packages ──────────────────────────────────────────────────────────────
##  package              * version   date       lib
##  ape                    5.3       2019-03-17 [1]
##  assertthat             0.2.1     2019-03-21 [1]
##  backports              1.1.4     2019-04-10 [1]
##  base64enc              0.1-3     2015-07-28 [1]
##  beeswarm               0.2.3     2016-04-25 [1]
##  bibtex                 0.4.2     2017-06-30 [1]
##  Biobase              * 2.44.0    2019-05-02 [1]
##  BiocGenerics         * 0.30.0    2019-05-02 [1]
##  BiocNeighbors          1.2.0     2019-05-02 [1]
##  BiocParallel         * 1.18.1    2019-08-06 [1]
##  BiocSingular           1.0.0     2019-05-02 [1]
##  bitops                 1.0-6     2013-08-17 [1]
##  callr                  3.4.0     2019-12-09 [1]
##  caTools                1.17.1.2  2019-03-06 [1]
##  cli                    1.1.0     2019-03-19 [1]
##  cluster                2.1.0     2019-06-19 [1]
##  codetools              0.2-16    2018-12-24 [2]
##  colorspace             1.4-1     2019-03-18 [1]
##  cowplot                1.0.0     2019-07-11 [1]
##  crayon                 1.3.4     2017-09-16 [1]
##  data.table           * 1.12.2    2019-04-07 [1]
##  DelayedArray         * 0.10.0    2019-05-02 [1]
##  DelayedMatrixStats     1.6.1     2019-09-08 [1]
##  desc                   1.2.0     2018-05-01 [1]
##  devtools               2.2.0     2019-09-07 [1]
##  digest                 0.6.20    2019-07-04 [1]
##  doParallel           * 1.0.15    2019-08-02 [1]
##  dplyr                  0.8.3     2019-07-04 [1]
##  dqrng                  0.2.1     2019-05-17 [1]
##  DrImpute             * 1.2       2019-09-17 [3]
##  DT                     0.9       2019-09-17 [1]
##  dynamicTreeCut         1.63-1    2016-03-11 [1]
##  edgeR                  3.26.8    2019-09-01 [1]
##  ellipsis               0.2.0.1   2019-07-02 [1]
##  evaluate               0.14      2019-05-28 [1]
##  fitdistrplus           1.0-14    2019-01-23 [1]
##  FNN                    1.1.3     2019-02-15 [1]
##  foreach              * 1.4.7     2019-07-27 [1]
##  fs                     1.3.1     2019-05-06 [1]
##  future               * 1.14.0    2019-07-02 [1]
##  future.apply           1.3.0     2019-06-18 [1]
##  gbRd                   0.4-11    2012-10-01 [1]
##  gdata                  2.18.0    2017-06-06 [1]
##  generics               0.0.2     2018-11-29 [1]
##  GenomeInfoDb         * 1.20.0    2019-05-02 [1]
##  GenomeInfoDbData       1.2.1     2019-05-04 [1]
##  GenomicRanges        * 1.36.1    2019-09-06 [1]
##  ggbeeswarm             0.6.0     2017-08-07 [1]
##  ggplot2              * 3.2.1     2019-08-10 [1]
##  ggrepel                0.8.1     2019-05-07 [1]
##  ggridges               0.5.1     2018-09-27 [1]
##  globals                0.12.4    2018-10-11 [1]
##  glue                   1.3.1     2019-03-12 [1]
##  gplots                 3.0.1.1   2019-01-27 [1]
##  gridExtra              2.3       2017-09-09 [1]
##  gtable                 0.3.0     2019-03-25 [1]
##  gtools                 3.8.1     2018-06-26 [1]
##  htmltools              0.3.6     2017-04-28 [1]
##  htmlwidgets            1.3       2018-09-30 [1]
##  httr                   1.4.1     2019-08-05 [1]
##  ica                    1.0-2     2018-05-24 [1]
##  igraph                 1.2.4.1   2019-04-22 [1]
##  IRanges              * 2.18.2    2019-08-24 [1]
##  irlba                  2.3.3     2019-02-05 [1]
##  iterators            * 1.0.12    2019-07-26 [1]
##  jsonlite               1.6       2018-12-07 [1]
##  keras                * 2.2.5.0   2019-10-08 [3]
##  kernlab                0.9-27    2018-08-10 [1]
##  KernSmooth             2.23-15   2015-06-29 [2]
##  knitr                  1.25      2019-09-18 [1]
##  lattice                0.20-38   2018-11-04 [2]
##  lazyeval               0.2.2     2019-03-15 [1]
##  leiden                 0.3.1     2019-07-23 [1]
##  lifecycle              0.1.0     2019-08-01 [1]
##  limma                  3.40.6    2019-07-26 [1]
##  listenv                0.7.0     2018-01-21 [1]
##  lmtest                 0.9-37    2019-04-30 [1]
##  locfit                 1.5-9.1   2013-04-20 [1]
##  lsei                   1.2-0     2017-10-23 [1]
##  magrittr               1.5       2014-11-22 [1]
##  MASS                   7.3-51.4  2019-03-31 [2]
##  Matrix                 1.2-17    2019-03-22 [1]
##  matrixStats          * 0.55.0    2019-09-07 [1]
##  memoise                1.1.0     2017-04-21 [1]
##  metap                  1.1       2019-02-06 [1]
##  munsell                0.5.0     2018-06-12 [1]
##  nlme                   3.1-139   2019-04-09 [2]
##  npsurv                 0.4-0     2017-10-14 [1]
##  pbapply                1.4-2     2019-08-31 [1]
##  penalized            * 0.9-51    2018-07-12 [3]
##  pillar                 1.4.2     2019-06-29 [1]
##  pkgbuild               1.0.5     2019-08-26 [1]
##  pkgconfig              2.0.2     2018-08-16 [1]
##  pkgload                1.0.2     2018-10-29 [1]
##  plotly                 4.9.0     2019-04-10 [1]
##  plyr                   1.8.4     2016-06-08 [1]
##  png                    0.1-7     2013-12-03 [1]
##  prettyunits            1.0.2     2015-07-13 [1]
##  processx               3.4.1     2019-07-18 [1]
##  ps                     1.3.0     2018-12-21 [1]
##  purrr                * 0.3.2     2019-03-15 [1]
##  R.methodsS3            1.7.1     2016-02-16 [1]
##  R.oo                   1.22.0    2018-04-22 [1]
##  R.utils                2.9.0     2019-06-13 [1]
##  R6                     2.4.0     2019-02-14 [1]
##  RANN                   2.6.1     2019-01-08 [1]
##  RColorBrewer           1.1-2     2014-12-07 [1]
##  Rcpp                   1.0.2     2019-07-25 [1]
##  RcppAnnoy              0.0.12    2019-05-12 [1]
##  RcppParallel           4.4.3     2019-05-22 [1]
##  RCurl                  1.95-4.12 2019-03-04 [1]
##  Rdpack                 0.11-0    2019-04-14 [1]
##  remotes                2.1.0     2019-06-24 [1]
##  reshape2               1.4.3     2017-12-11 [1]
##  reticulate           * 1.13      2019-07-24 [1]
##  rlang                  0.4.0     2019-06-25 [1]
##  rmarkdown              1.15      2019-08-21 [1]
##  ROCR                   1.0-7     2015-03-26 [1]
##  rprojroot              1.3-2     2018-01-03 [1]
##  rsvd                 * 1.0.2     2019-07-29 [1]
##  Rtsne                  0.15      2018-11-10 [1]
##  S4Vectors            * 0.22.1    2019-09-09 [1]
##  SAVERX               * 1.0.0     2019-08-19 [3]
##  scales                 1.0.0     2018-08-09 [1]
##  scater               * 1.12.2    2019-05-24 [1]
##  scDblFinder          * 1.0       2019-06-28 [3]
##  scImpute             * 0.0.9     2019-08-16 [3]
##  scran                * 1.12.1    2019-05-27 [1]
##  sctransform          * 0.2.0     2019-04-12 [1]
##  SDMTools               1.1-221.1 2019-04-18 [1]
##  sessioninfo            1.1.1     2018-11-05 [1]
##  Seurat               * 3.1.0     2019-08-20 [1]
##  SingleCellExperiment * 1.6.0     2019-05-02 [1]
##  statmod                1.4.32    2019-05-29 [1]
##  stringi                1.4.3     2019-03-12 [1]
##  stringr                1.4.0     2019-02-10 [1]
##  SummarizedExperiment * 1.14.1    2019-07-31 [1]
##  survival             * 2.44-1.1  2019-04-01 [2]
##  tensorflow           * 2.0.0     2019-10-02 [3]
##  testthat               2.2.1     2019-07-25 [1]
##  tfruns                 1.4       2018-08-25 [3]
##  tibble                 2.1.3     2019-06-06 [1]
##  tidyr                  1.0.0     2019-09-11 [1]
##  tidyselect             0.2.5     2018-10-11 [1]
##  tsne                   0.1-3     2016-07-15 [1]
##  usethis                1.5.1     2019-07-04 [1]
##  uwot                   0.1.3     2019-04-07 [1]
##  vctrs                  0.2.0     2019-07-05 [1]
##  vipor                  0.4.5     2017-03-22 [1]
##  viridis                0.5.1     2018-03-29 [1]
##  viridisLite            0.3.0     2018-02-01 [1]
##  whisker                0.4       2019-08-28 [1]
##  withr                  2.1.2     2018-03-15 [1]
##  xfun                   0.9       2019-08-21 [1]
##  XVector                0.24.0    2019-05-02 [1]
##  yaml                   2.2.0     2018-07-25 [1]
##  zeallot                0.1.0     2018-01-28 [1]
##  zlibbioc               1.30.0    2019-05-02 [1]
##  zoo                    1.8-6     2019-05-28 [1]
##  source                               
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  Bioconductor                         
##  Bioconductor                         
##  Bioconductor                         
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Github (gongx030/DrImpute@0045c9a)   
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  Bioconductor                         
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  Github (jingshuw/SAVERX@9bdb11e)     
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  Github (plger/scDblFinder@d78c5cd)   
##  Github (Vivianstats/scImpute@13caf00)
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
## 
## [1] /home/Shared/Rlib/release-3.9-lib
## [2] /usr/local/R/R-3.6.0/library
## [3] /home/asonrel/R_lib36
```


```r
print(reticulate::py_config())
```

```
## python:         /home/asonrel/.virtualenvs/r-tensorflow/bin/python
## libpython:      /usr/lib/python2.7/config-x86_64-linux-gnu/libpython2.7.so
## pythonhome:     /usr:/usr
## virtualenv:     /home/asonrel/.virtualenvs/r-tensorflow/bin/activate_this.py
## version:        2.7.12 (default, Dec  4 2017, 14:50:18)  [GCC 5.4.0 20160609]
## numpy:          /home/asonrel/.virtualenvs/r-tensorflow/local/lib/python2.7/site-packages/numpy
## numpy_version:  1.16.4
## tensorflow:     /home/asonrel/.virtualenvs/r-tensorflow/local/lib/python2.7/site-packages/tensorflow
## 
## python versions found: 
##  /home/asonrel/.virtualenvs/r-reticulate/bin/python
##  /home/asonrel/.virtualenvs/r-tensorflow/bin/python
##  /home/asonrel/miniconda3/envs/r-tensorflow/bin/python
##  /usr/bin/python
##  /usr/bin/python3
##  /home/asonrel/.virtualenvs/Renv_umap/bin/python
##  /home/asonrel/.virtualenvs/TensorFlow_R/bin/python
##  /home/asonrel/miniconda3/envs/Renv_umap/bin/python
##  /home/asonrel/miniconda2/bin/python
##  /home/asonrel/miniconda3/bin/python
```


```r
Sys.setenv(PATH = paste0("/home/asonrel/miniconda3/bin:",
                     Sys.getenv("PATH")))
Sys.setenv(LD_LIBRARY_PATH = "/home/asonrel/miniconda3/lib") 
```


```bash

pip freeze

```

```
## absl-py==0.7.1
## anndata==0.6.22.post1
## asn1crypto==0.24.0
## astor==0.8.0
## certifi==2019.3.9
## cffi==1.12.2
## chardet==3.0.4
## conda==4.6.14
## cryptography==2.6.1
## cycler==0.10.0
## DCA==0.2.2
## decorator==4.4.0
## future==0.17.1
## gast==0.2.2
## google-pasta==0.1.7
## grpcio==1.23.0
## h5py==2.9.0
## hyperopt==0.1.2
## idna==2.8
## importlib-metadata==0.19
## joblib==0.13.2
## Keras==2.2.4
## Keras-Applications==1.0.8
## Keras-Preprocessing==1.1.0
## kiwisolver==1.1.0
## kopt==0.1.0
## llvmlite==0.28.0
## Markdown==3.1.1
## matplotlib==3.0.3
## mock==3.0.5
## natsort==6.0.0
## networkx==2.3
## numba==0.43.1
## numexpr==2.7.0
## numpy==1.16.4
## pandas==0.25.0
## patsy==0.5.1
## protobuf==3.9.1
## pycosat==0.6.3
## pycparser==2.19
## pymongo==3.9.0
## pyOpenSSL==19.0.0
## pyparsing==2.4.2
## PySocks==1.6.8
## python-dateutil==2.8.0
## pytz==2019.2
## PyYAML==5.1.2
## requests==2.21.0
## ruamel-yaml==0.15.46
## scanpy==1.4.4.post1
## scikit-learn==0.21.2
## scipy==1.3.0
## sctransfer==0.0.5
## seaborn==0.9.0
## six==1.12.0
## statsmodels==0.10.1
## tables==3.5.2
## tensorboard==1.14.0
## tensorflow==1.14.0
## tensorflow-estimator==1.14.0
## termcolor==1.1.0
## tqdm==4.34.0
## umap-learn==0.3.9
## urllib3==1.24.1
## Werkzeug==0.15.5
## wrapt==1.11.2
## zipp==0.5.2
```


