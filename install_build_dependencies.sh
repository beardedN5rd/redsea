#!/bin/bash

set -e

apt-get update
apt-get install -y --no-install-recommends \
git \
build-essential \
autoconf \
automake \
libsndfile1-dev

apt-get autoclean
apt-get autoremove
