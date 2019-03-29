FROM nvcr.io/nvidia/pytorch:19.01-py3

RUN apt-get update && \
    /opt/conda/bin/conda install -y matplotlib seaborn && \
    /opt/conda/bin/conda clean -ya
    
