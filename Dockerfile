FROM andrewosh/binder-base

MAINTAINER Rick Lupton <rcl33@cam.ac.uk>

# Requirements.yml part
ADD environment.yml environment.yml
RUN conda env create -n binder
RUN echo "export PATH=/home/main/anaconda2/envs/binder/bin/:/home/main/anaconda3/envs/binder/bin/:$PATH" >> ~/.binder_start
RUN conda install -n binder jupyter
RUN /bin/bash -c "source activate binder && jupyter kernelspec install-self --user"

# Activate ipysankeywidget
RUN /bin/bash -c "source activate binder && jupyter nbextension enable --py --sys-prefix ipysankeywidget"

# Suffix
USER main
WORKDIR $HOME/notebooks