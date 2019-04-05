FROM arm32v7/ubuntu:trusty

COPY qemu-arm-static /usr/bin

ENV DEBIAN_FRONTEND noninteractive
COPY sources.list /etc/apt/sources.list
RUN apt-get update && \
apt-get install -y --no-install-recommends git build-essential autoconf automake libsndfile1-dev && \
#libliquid-dev && \
apt-get autoclean && apt-get autoremove
