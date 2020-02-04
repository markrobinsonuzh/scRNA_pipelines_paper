
# Session info - imputation on local

This is the environment in which imputation/denoising methods were ran.

Tools run on local: `SAVERX`, `scImpute`.


```r
devtools::session_info()
```

```
## ─ Session info ───────────────────────────────────────────────────────────────
##  setting  value                       
##  version  R version 3.6.2 (2019-12-12)
##  os       Ubuntu 18.04.3 LTS          
##  system   x86_64, linux-gnu           
##  ui       X11                         
##  language (EN)                        
##  collate  en_US.UTF-8                 
##  ctype    en_US.UTF-8                 
##  tz       Europe/Zurich               
##  date     2020-02-04                  
## 
## ─ Packages ───────────────────────────────────────────────────────────────────
##  package              * version    date       lib
##  ape                    5.3        2019-03-17 [1]
##  assertthat             0.2.1      2019-03-21 [1]
##  backports              1.1.5      2019-10-02 [1]
##  base64enc              0.1-3      2015-07-28 [1]
##  beeswarm               0.2.3      2016-04-25 [1]
##  bibtex                 0.4.2.2    2020-01-02 [1]
##  Biobase              * 2.46.0     2019-10-29 [1]
##  BiocGenerics         * 0.32.0     2019-10-29 [1]
##  BiocNeighbors          1.4.1      2019-11-01 [1]
##  BiocParallel         * 1.20.1     2019-12-21 [1]
##  BiocSingular           1.2.1      2019-12-23 [1]
##  bitops                 1.0-6      2013-08-17 [1]
##  callr                  3.4.0      2019-12-09 [1]
##  caTools                1.18.0     2020-01-17 [1]
##  cli                    2.0.1      2020-01-08 [1]
##  cluster                2.1.0      2019-06-19 [4]
##  codetools              0.2-16     2018-12-24 [4]
##  colorspace             1.4-1      2019-03-18 [1]
##  cowplot                1.0.0      2019-07-11 [1]
##  crayon                 1.3.4      2017-09-16 [1]
##  data.table           * 1.12.8     2019-12-09 [1]
##  DelayedArray         * 0.12.2     2020-01-06 [1]
##  DelayedMatrixStats     1.8.0      2019-10-29 [1]
##  desc                   1.2.0      2018-05-01 [1]
##  devtools               2.2.1      2019-09-24 [1]
##  digest                 0.6.23     2019-11-23 [1]
##  doParallel           * 1.0.15     2019-08-02 [1]
##  dplyr                  0.8.3      2019-07-04 [1]
##  dqrng                  0.2.1      2019-05-17 [1]
##  edgeR                  3.28.0     2019-10-29 [1]
##  ellipsis               0.3.0      2019-09-20 [1]
##  evaluate               0.14       2019-05-28 [1]
##  fansi                  0.4.1      2020-01-08 [1]
##  fitdistrplus           1.0-14     2019-01-23 [1]
##  foreach              * 1.4.7      2019-07-27 [1]
##  fs                     1.3.1      2019-05-06 [1]
##  future               * 1.16.0     2020-01-16 [1]
##  future.apply           1.4.0      2020-01-07 [1]
##  gbRd                   0.4-11     2012-10-01 [1]
##  gdata                  2.18.0     2017-06-06 [1]
##  generics               0.0.2      2018-11-29 [1]
##  GenomeInfoDb         * 1.22.0     2019-10-29 [1]
##  GenomeInfoDbData       1.2.2      2019-11-06 [1]
##  GenomicRanges        * 1.38.0     2019-10-29 [1]
##  ggbeeswarm             0.6.0      2017-08-07 [1]
##  ggplot2              * 3.2.1      2019-08-10 [1]
##  ggrepel                0.8.1      2019-05-07 [1]
##  ggridges               0.5.2      2020-01-12 [1]
##  globals                0.12.5     2019-12-07 [1]
##  glue                   1.3.1      2019-03-12 [1]
##  gplots                 3.0.1.2    2020-01-11 [1]
##  gridExtra              2.3        2017-09-09 [1]
##  gtable                 0.3.0      2019-03-25 [1]
##  gtools                 3.8.1      2018-06-26 [1]
##  htmltools              0.4.0      2019-10-04 [1]
##  htmlwidgets            1.5.1      2019-10-08 [1]
##  httr                   1.4.1      2019-08-05 [1]
##  ica                    1.0-2      2018-05-24 [1]
##  igraph                 1.2.4.2    2019-11-27 [1]
##  IRanges              * 2.20.2     2020-01-13 [1]
##  irlba                  2.3.3      2019-02-05 [1]
##  iterators            * 1.0.12     2019-07-26 [1]
##  jsonlite               1.6        2018-12-07 [1]
##  keras                * 2.2.5.0    2019-10-08 [1]
##  kernlab                0.9-29     2019-11-12 [1]
##  KernSmooth             2.23-16    2019-10-15 [4]
##  knitr                  1.27       2020-01-16 [1]
##  lattice                0.20-38    2018-11-04 [1]
##  lazyeval               0.2.2      2019-03-15 [1]
##  leiden                 0.3.2      2020-01-18 [1]
##  lifecycle              0.1.0      2019-08-01 [1]
##  limma                  3.42.0     2019-10-29 [1]
##  listenv                0.8.0      2019-12-05 [1]
##  lmtest                 0.9-37     2019-04-30 [1]
##  locfit                 1.5-9.1    2013-04-20 [1]
##  lsei                   1.2-0      2017-10-23 [1]
##  magrittr               1.5        2014-11-22 [1]
##  MASS                   7.3-51.5   2019-12-20 [4]
##  Matrix                 1.2-18     2019-11-27 [1]
##  matrixStats          * 0.55.0     2019-09-07 [1]
##  memoise                1.1.0      2017-04-21 [1]
##  metap                  1.2        2019-12-08 [1]
##  mnormt                 1.5-5      2016-10-15 [1]
##  multcomp               1.4-12     2020-01-10 [1]
##  multtest               2.42.0     2019-10-29 [1]
##  munsell                0.5.0      2018-06-12 [1]
##  mutoss                 0.1-12     2017-12-04 [1]
##  mvtnorm                1.0-12     2020-01-09 [1]
##  nlme                   3.1-143    2019-12-10 [1]
##  npsurv                 0.4-0      2017-10-14 [1]
##  numDeriv               2016.8-1.1 2019-06-06 [1]
##  pbapply                1.4-2      2019-08-31 [1]
##  penalized            * 0.9-51     2018-07-12 [1]
##  pillar                 1.4.3      2019-12-20 [1]
##  pkgbuild               1.0.6      2019-10-09 [1]
##  pkgconfig              2.0.3      2019-09-22 [1]
##  pkgload                1.0.2      2018-10-29 [1]
##  plotly                 4.9.1      2019-11-07 [1]
##  plotrix                3.7-7      2019-12-05 [1]
##  plyr                   1.8.5      2019-12-10 [1]
##  png                    0.1-7      2013-12-03 [1]
##  prettyunits            1.1.0      2020-01-09 [1]
##  processx               3.4.1      2019-07-18 [1]
##  ps                     1.3.0      2018-12-21 [1]
##  purrr                * 0.3.3      2019-10-18 [1]
##  R.methodsS3            1.7.1      2016-02-16 [1]
##  R.oo                   1.23.0     2019-11-03 [1]
##  R.utils                2.9.2      2019-12-08 [1]
##  R6                     2.4.1      2019-11-12 [1]
##  RANN                   2.6.1      2019-01-08 [1]
##  rappdirs               0.3.1      2016-03-28 [1]
##  RColorBrewer           1.1-2      2014-12-07 [1]
##  Rcpp                   1.0.3      2019-11-08 [1]
##  RcppAnnoy              0.0.14     2019-11-12 [1]
##  RcppParallel           4.4.4      2019-09-27 [1]
##  RCurl                  1.98-1.1   2020-01-19 [1]
##  Rdpack                 0.11-1     2019-12-14 [1]
##  remotes                2.1.0      2019-06-24 [1]
##  reshape2               1.4.3      2017-12-11 [1]
##  reticulate           * 1.14       2019-12-17 [1]
##  rlang                  0.4.2      2019-11-23 [1]
##  rmarkdown              2.1        2020-01-20 [1]
##  ROCR                   1.0-7      2015-03-26 [1]
##  rprojroot              1.3-2      2018-01-03 [1]
##  rsvd                 * 1.0.2      2019-07-29 [1]
##  Rtsne                  0.15       2018-11-10 [1]
##  S4Vectors            * 0.24.3     2020-01-18 [1]
##  sandwich               2.5-1      2019-04-06 [1]
##  SAVERX               * 1.0.0      2019-08-20 [1]
##  scales                 1.1.0      2019-11-18 [1]
##  scater               * 1.14.6     2019-12-16 [1]
##  scImpute             * 0.0.9      2019-08-20 [1]
##  scran                * 1.14.5     2019-11-19 [1]
##  sctransform          * 0.2.1      2019-12-17 [1]
##  SDMTools               1.1-221.2  2019-11-30 [1]
##  sessioninfo            1.1.1      2018-11-05 [1]
##  Seurat               * 3.1.2      2019-12-12 [1]
##  SingleCellExperiment * 1.8.0      2019-10-29 [1]
##  sn                     1.5-4      2019-05-14 [1]
##  statmod                1.4.33     2020-01-10 [1]
##  stringi                1.4.5      2020-01-11 [1]
##  stringr                1.4.0      2019-02-10 [1]
##  SummarizedExperiment * 1.16.1     2019-12-19 [1]
##  survival             * 3.1-8      2019-12-03 [4]
##  tensorflow           * 2.0.0      2019-10-02 [1]
##  testthat               2.3.1      2019-12-01 [1]
##  TFisher                0.2.0      2018-03-21 [1]
##  tfruns                 1.4        2018-08-25 [1]
##  TH.data                1.0-10     2019-01-21 [1]
##  tibble                 2.1.3      2019-06-06 [1]
##  tidyr                  1.0.0      2019-09-11 [1]
##  tidyselect             0.2.5      2018-10-11 [1]
##  tsne                   0.1-3      2016-07-15 [1]
##  usethis                1.5.1      2019-07-04 [1]
##  uwot                   0.1.5      2019-12-04 [1]
##  vctrs                  0.2.1      2019-12-17 [1]
##  vipor                  0.4.5      2017-03-22 [1]
##  viridis                0.5.1      2018-03-29 [1]
##  viridisLite            0.3.0      2018-02-01 [1]
##  whisker                0.4        2019-08-28 [1]
##  withr                  2.1.2      2018-03-15 [1]
##  xfun                   0.12       2020-01-13 [1]
##  XVector                0.26.0     2019-10-29 [1]
##  yaml                   2.2.0      2018-07-25 [1]
##  zeallot                0.1.0      2018-01-28 [1]
##  zlibbioc               1.32.0     2019-10-29 [1]
##  zoo                    1.8-7      2020-01-10 [1]
##  source                               
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.2)                       
##  Bioconductor                         
##  Bioconductor                         
##  Bioconductor                         
##  Bioconductor                         
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  Bioconductor                         
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  Bioconductor                         
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.2)                       
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  Bioconductor                         
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.2)                       
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  Github (jingshuw/SAVERX@9bdb11e)     
##  CRAN (R 3.6.1)                       
##  Bioconductor                         
##  Github (Vivianstats/scImpute@13caf00)
##  Bioconductor                         
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.2)                       
##  Bioconductor                         
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.2)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.1)                       
##  Bioconductor                         
##  CRAN (R 3.6.0)                       
##  CRAN (R 3.6.0)                       
##  Bioconductor                         
##  CRAN (R 3.6.2)                       
## 
## [1] /home/anthonys/R/x86_64-pc-linux-gnu-library/3.6
## [2] /usr/local/lib/R/site-library
## [3] /usr/lib/R/site-library
## [4] /usr/lib/R/library
```



```r
print(reticulate::py_config())
```

```
## python:         /usr/bin/python3
## libpython:      /usr/lib/python3.6/config-3.6m-x86_64-linux-gnu/libpython3.6.so
## pythonhome:     //usr://usr
## version:        3.6.9 (default, Nov  7 2019, 10:44:02)  [GCC 8.3.0]
## numpy:          /home/anthonys/.local/lib/python3.6/site-packages/numpy
## numpy_version:  1.17.2
## tensorflow:     /home/anthonys/.local/lib/python3.6/site-packages/tensorflow
## 
## NOTE: Python version was forced by RETICULATE_PYTHON
```


```bash
pip3 freeze
```

```
## absl-py==0.7.1
## alabaster==0.7.8
## anndata==0.6.22.post1
## apturl==0.5.2
## asn1crypto==0.24.0
## astor==0.8.0
## astroid==1.6.0
## attrs==19.1.0
## Babel==2.4.0
## backcall==0.1.0
## beautifulsoup4==4.6.0
## bleach==3.1.0
## Brlapi==0.6.6
## certifi==2018.1.18
## chardet==3.0.4
## cloudpickle==0.5.2
## command-not-found==0.3
## cryptography==2.1.4
## cupshelpers==1.0
## cycler==0.10.0
## DCA==0.2.2
## decorator==4.4.0
## defer==1.0.6
## defusedxml==0.6.0
## distro-info===0.18ubuntu0.18.04.1
## docutils==0.14
## entrypoints==0.3
## future==0.17.1
## gast==0.2.2
## google-pasta==0.1.7
## grpcio==1.23.0
## h5py==2.9.0
## html5lib==0.999999999
## httplib2==0.9.2
## hyperopt==0.1.2
## idna==2.6
## imagesize==0.7.1
## importlib-metadata==0.19
## ipykernel==5.1.2
## ipython==7.8.0
## ipython-genutils==0.2.0
## isort==4.3.4
## jedi==0.15.1
## Jinja2==2.10.1
## joblib==0.13.2
## json5==0.8.5
## jsonschema==3.0.2
## jupyter-client==5.3.3
## jupyter-core==4.5.0
## jupyterlab==1.1.3
## jupyterlab-server==1.0.6
## Keras==2.2.4
## Keras-Applications==1.0.8
## Keras-Preprocessing==1.1.0
## keyring==10.6.0
## keyrings.alt==3.0
## kiwisolver==1.1.0
## kopt==0.1.0
## language-selector==0.1
## launchpadlib==1.10.6
## lazr.restfulclient==0.13.5
## lazr.uri==1.0.3
## lazy-object-proxy==1.3.1
## llvmlite==0.29.0
## logilab-common==1.4.1
## louis==3.5.0
## lxml==4.2.1
## macaroonbakery==1.1.3
## Mako==1.0.7
## Markdown==3.1.1
## MarkupSafe==1.1.1
## matplotlib==3.1.1
## mccabe==0.6.1
## mistune==0.8.4
## mock==3.0.5
## natsort==6.0.0
## nbconvert==5.6.0
## nbformat==4.4.0
## netifaces==0.10.4
## networkx==2.3
## notebook==6.0.1
## numba==0.45.1
## numexpr==2.7.0
## numpy==1.17.2
## numpydoc==0.7.0
## oauth==1.0.1
## olefile==0.45.1
## pandas==0.25.1
## pandocfilters==1.4.2
## parso==0.5.1
## patsy==0.5.1
## pexpect==4.7.0
## pickleshare==0.7.5
## Pillow==5.1.0
## prometheus-client==0.7.1
## prompt-toolkit==2.0.9
## protobuf==3.9.1
## psutil==5.4.2
## ptyprocess==0.6.0
## pycairo==1.16.2
## pycodestyle==2.3.1
## pycrypto==2.6.1
## pycups==1.9.73
## pyflakes==1.6.0
## Pygments==2.4.2
## pygobject==3.26.1
## pylint==1.8.3
## pymacaroons==0.13.0
## pymongo==3.9.0
## PyNaCl==1.1.2
## pyparsing==2.4.2
## pyRFC3339==1.0
## pyrsistent==0.15.4
## python-apt==1.6.4
## python-dateutil==2.8.0
## python-debian==0.1.32
## pytz==2019.2
## pyxdg==0.25
## PyYAML==5.1.2
## pyzmq==18.1.0
## QtAwesome==0.4.4
## qtconsole==4.3.1
## QtPy==1.3.1
## remarkable==1.87
## reportlab==3.4.0
## requests==2.18.4
## requests-unixsocket==0.1.5
## roman==2.0.0
## rope==0.10.5
## scanpy==1.4.4.post1
## scikit-learn==0.21.3
## scipy==1.3.1
## sctransfer==0.0.5
## seaborn==0.9.0
## SecretStorage==2.3.1
## Send2Trash==1.5.0
## simplegeneric==0.8.1
## simplejson==3.13.2
## six==1.12.0
## Sphinx==1.6.7
## spyder==3.2.6
## statsmodels==0.10.1
## system-service==0.3
## systemd-python==234
## tables==3.5.2
## tensorboard==1.14.0
## tensorflow==1.14.0
## tensorflow-estimator==1.14.0
## termcolor==1.1.0
## terminado==0.8.2
## testpath==0.4.2
## tornado==6.0.3
## tqdm==4.34.0
## traitlets==4.3.2
## ubuntu-drivers-common==0.0.0
## ufw==0.36
## umap-learn==0.3.10
## unattended-upgrades==0.1
## urllib3==1.22
## usb-creator==0.3.3
## virtualenv==15.1.0
## wadllib==1.3.2
## wcwidth==0.1.7
## webencodings==0.5.1
## Werkzeug==0.15.5
## wrapt==1.11.2
## xkit==0.0.0
## zipp==0.5.2
## zope.interface==4.3.2
```

