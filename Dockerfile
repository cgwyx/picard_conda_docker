#################################################################
# Dockerfile
# File Author / Maintainer: cheng gong <512543469@qq.com>
#################################################################

FROM conda/miniconda2

MAINTAINER cheng gong <512543469@qq.com>

RUN conda config --add channels defaults &&\
    conda config --add channels conda-forge &&\
    conda config --add channels r &&\
    conda config --add channels bioconda &&\
    conda update --all -y &&\
    conda install -y picard=2.9.2

CMD ["/bin/bash"]


