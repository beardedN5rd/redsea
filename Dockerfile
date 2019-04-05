FROM arm32v7/ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

COPY qemu-arm-static /usr/bin
COPY sources.list /etc/apt/sources.list

RUN apt-get update && \
apt-get install -y --no-install-recommends git build-essential autoconf automake libsndfile1-dev && \
#libliquid-dev && \
apt-get autoclean && apt-get autoremove

ADD ./liquid-dsp /liquid-dsp
WORKDIR /liquid-dsp
RUN make install
