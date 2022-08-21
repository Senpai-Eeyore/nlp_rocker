FROM rocker/ml-verse:devel

LABEL org.opencontainers.image.licenses="GPL-2.0-or-later" \
      org.opencontainers.image.source="https://github.com/rocker-org/rocker-versioned2" \
      org.opencontainers.image.vendor="Rocker Project forked by Senpai-Eeyore" \
      org.opencontainers.image.authors="Keenan Smith <keenan.t.smith.1@gmail.com>"

ENV CTAN_REPO=https://mirror.ctan.org/systems/texlive/tlnet

RUN /scripts/install_my_r_packages.sh
RUN /scripts/install_shiny_server.sh
