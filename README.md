# scRNAseq pipeline comparison paper

* The main manuscript is in tex format in [bmc_article.tex](bmc_article.tex), also on overleaf with the live pdf [overleaf](https://www.overleaf.com/8363911436cjjhgkcmcxgh).

* The main figures are in the `main_figures` folder, each produced by its own `Rmd` file. At the moment the rendered images from these files get imported in the `tex` file.

* The supplementary figures are in the various `supplementary_figures` files, compiled as pdf through [supp_figures.Rmd](supplementary_figures/supp_figures.Rmd), but that file imports the various pieces of supplementary from the other `Rmd` in the folder. I try to keep an up-to-date version of the pdf in [supplementary_figures/supp_figures.pdf](supplementary_figures/supp_figures.pdf).

NB: Rendering some of the R markdowns for supplementaries requires, in addition to the necessary packages, `datasets` (in the repo's root) to be softlinked to the folder containing the SCE objects (not included in this repository). Other (smaller) pieces of data are included in the `data` folder.
