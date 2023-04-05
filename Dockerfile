FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y autoconf automake libtool build-essential libboost-all-dev && \
    rm -rf /var/lib/apt/lists/*

COPY . /yasa
WORKDIR /yasa

RUN autoreconf -i && \
    ./configure && \
    make

CMD /bin/bash
