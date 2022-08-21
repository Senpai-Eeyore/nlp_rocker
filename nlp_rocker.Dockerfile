FROM rocker/ml-verse

LABEL maintainer="Keenan Smith <keenan.t.smith.1@gmail.com>"

ENV PASSWORD=password

# Installing the Packages I like to use
RUN install2.r --skipmissing --deps TRUE --skipinstalled -n 6 \
      ggthemes \
      tidymodels \ 
      tidytext \
      gapminder \
      gganimate \ 
      torch \ 
      keras \
      future \
      furrr \
      here \
      quarto

# Install miniconda
ENV CONDA_DIR /opt/conda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
     /bin/bash ~/miniconda.sh -b -p /opt/conda

# Put conda in path so we can use conda activate
ENV PATH=$CONDA_DIR/bin:$PATH

RUN /opt/conda/bin/pip install --no-cache-dir keras tensorflow

