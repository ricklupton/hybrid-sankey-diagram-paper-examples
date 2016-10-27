These notebooks produce the Sankey diagrams in the paper "Visual analyses of
multidimensional data for understanding resource use"

## Try online

Run the examples without any installation using Binder:

[![Binder](http://mybinder.org/badge.svg)](http://mybinder.org:/repo/ricklupton/visual-analyses-multidimensional-data-examples)

## Prerequisites

`sankeyview` depends on pandas and networkx. To view Sankey diagrams in the
browser, you need
[ipysankeywidget](https://github.com/ricklupton/ipysankeywidget).

Using conda, you can set up a new environment to run this notebook as follows.

On Linux/OS X:

```console
$ conda env create -n sankeyview-paper -f environment.yml
$ source activate sankeyview-paper
$ jupyter nbextension enable --py --sys-prefix ipysankeywidget
$ jupyter notebook
...
```

On Windows:

```console
> conda env create -n sankeyview-paper -f environment.yml
> activate sankeyview-paper
> jupyter nbextension enable --py --sys-prefix ipysankeywidget
> jupyter notebook
...
```

Then run this notebook using the kernel in your new "sankeyview-paper"
environment. This is easy if you use something like
[nb_conda_kernels](https://github.com/Anaconda-Platform/nb_conda_kernels);
otherwise you might need to set up a kernel manually, or else just use your root
anaconda environment.

It's not necessary to use conda, but it makes it easier to get a working numpy
etc. As long as you've already installed numpy and pandas, you should be able to
install sankeyview just using pip.
