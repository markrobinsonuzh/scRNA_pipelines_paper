# Session info - scVI



This is the environment in which scVI's normalization/LD step were ran. The nightly version of scVI was installed for the use of `set_seed` function for reproducibility. 



```r
library(reticulate)
reticulate::use_condaenv("scVI_env", required = TRUE)
print(reticulate::py_config())
```

```
## python:         /home/asonrel/miniconda3/envs/scVI_env/bin/python
## libpython:      /home/asonrel/miniconda3/envs/scVI_env/lib/libpython3.7m.so
## pythonhome:     /home/asonrel/miniconda3/envs/scVI_env:/home/asonrel/miniconda3/envs/scVI_env
## version:        3.7.0 (default, Oct  9 2018, 10:31:47)  [GCC 7.3.0]
## numpy:          /home/asonrel/miniconda3/envs/scVI_env/lib/python3.7/site-packages/numpy
## numpy_version:  1.18.1
## 
## NOTE: Python version was forced by use_python function
```



```bash

pip freeze

```

```
## anndata==0.7.1
## certifi==2019.11.28
## Click==7.0
## cycler==0.10.0
## decorator==4.4.1
## future==0.18.2
## h5py==2.10.0
## hyperopt==0.1.2
## importlib-metadata==1.5.0
## joblib==0.14.1
## kiwisolver==1.1.0
## llvmlite==0.30.0
## loompy==3.0.6
## matplotlib==3.1.3
## natsort==7.0.1
## networkx==2.4
## numba==0.45.0
## numpy==1.18.1
## numpy-groupies==0+unknown
## packaging==20.1
## pandas==1.0.1
## patsy==0.5.1
## pymongo==3.10.1
## pyparsing==2.4.6
## python-dateutil==2.8.1
## pytz==2019.3
## scikit-learn==0.22.1
## scipy==1.4.1
## scvi==0.5.0
## six==1.14.0
## statsmodels==0.11.0
## torch==1.4.0
## tqdm==4.42.1
## xlrd==1.2.0
## zipp==3.0.0
```


