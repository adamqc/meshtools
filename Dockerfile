FROM continuumio/miniconda3

RUN conda install -y python=3.6 && conda install -c conda-forge -y pymesh2 && conda clean -afy

RUN pip install gempy && rm -rf /root/.cache

USER root
WORKDIR /root

