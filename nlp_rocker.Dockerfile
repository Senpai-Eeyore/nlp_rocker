FROM rocker/ml-verse

LABEL maintainer="Keenan Smith <keenan.t.smith.1@gmail.com>"

ENV PASSWORD=password

RUN mkdir /r_data

VOLUME /r_data

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

RUN R -e "keras::install_keras()"

