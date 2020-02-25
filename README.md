# pipeComp, a general framework for the evaluation of computational pipelines, reveals performant single-cell RNA-seq preprocessing tools

This repository accompanies the [pipeComp paper](https://doi.org/10.1101/2020.02.02.930578). It is still in preparation, and aims to providing a record of what was done and access to compiled results, rather than easy reproducibility.

## Manuscript and figures

* The main manuscript is in tex format in [draft.tex](draft.tex).

* The main figures are in the `main_figures` folder, each produced by its own `Rmd` file.

* The supplementary figures are in `supplementary_figures/`, compiled as pdf through [supp_figures.Rmd](supplementary_figures/supp_figures.Rmd) which imports the various pieces of supplementary from the other `Rmd` in the folder. The compiled pdf is in [supplementary_figures/supp_figures.pdf](supplementary_figures/supp_figures.pdf).

## Datasets and simulations

* The code for generating the simulations is in `simulations/`

* The datasets themselves are not stored on github but on figshare https://doi.org/10.6084/m9.figshare.11787210.v1 . To work with the markdowns, these datasets should be placed in a `datasets/` folder at the root of the repo.

## Pipeline results

* The pipelines can be run and evaluated with the [pipeComp package](https://github.com/plger/pipeComp), which also includes [wrappers](https://github.com/plger/pipeComp/tree/master/inst/extdata) for all methods used. Unless indicated otherwise, the results were generated with the `biorxiv` branch of the package.

* The compiled pipeline results (i.e. results of _pipeComp_) are available in the `data/` folder (their more detailed description will follow).
