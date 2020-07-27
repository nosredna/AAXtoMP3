FROM ubuntu:latest

LABEL author=anascime@gmail.com

RUN mkdir /build
WORKDIR /build

RUN apt-get update
RUN apt-get install -y wget unzip ffmpeg x264 x265 bc

ENV PATH="/build:${PATH}"

COPY run.sh .
COPY AAXtoMP3 .

VOLUME [ "/data", "/output"]
WORKDIR /data

CMD ["/bin/bash", "/build/run.sh"]