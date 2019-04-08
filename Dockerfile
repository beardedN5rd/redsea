FROM arm32v7/ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

COPY qemu-arm-static /usr/bin
COPY sources.list /etc/apt/sources.list

ADD install_build_dependencies.sh /workdir/
RUN /workdir/install_build_dependencies.sh

ADD ./liquid-dsp /liquid-dsp
WORKDIR /liquid-dsp
RUN make install
