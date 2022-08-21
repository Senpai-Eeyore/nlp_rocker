#!/bin/bash

set -e

## build ARGs
NCPUS=${NCPUS:--1}

## installing specific packages for my install
install2.r --error --skipmissing --skipinstalled -n "$NCPUS" \
    tidymodels \
    ggthemes \
    gapminder \
    parallel \
    torch \
    tidytext

# Clean up
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/downloaded_packages

## Strip binary installed lybraries from RSPM
## https://github.com/rocker-org/rocker-versioned2/issues/340
strip /usr/local/lib/R/site-library/*/libs/*.so
