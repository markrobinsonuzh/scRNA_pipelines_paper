# Datasets for the SVA-DEA pipeline

Here are the 3 benchmark datasets in `SummarizedExperiment` format, and `data_prep.Rmd` contains the code used to generate them.

A brief description of the three datasets:

* **ipsc**: 10 vs 10 random samples from the GSE79636 dataset, which contains heterogeneous samples (background genetic variation, some batch effects). No further technical variation was added, and a foldchange was added on 300 genes.
* **seqc**: 5 vs 5 samples of seqc mixtures C and D respectively, which include two different spike-in mixes. The samples where selected from two batches with technical differences so that there is weak partial correlation with the mixtures (3:2 vs 2:3). Since the true differences between mixtures are not entirely known, the analysis was performed on all genes but only the spike-ins were considered for benchmarking.
* **simulation**: 8 vs 8 samples were simulated using `polyester` and the means/dispersions from the GSE79636 (restricted to a single batch and biological group), with 500 DEGs and two batch effects: 1) a technical batch partially correlated with the group (6:2) and affecting 1/3 of the genes, and 2) a linear vector of technical variation uncorrelated with the groups and affecting 1/3 of the genes.
