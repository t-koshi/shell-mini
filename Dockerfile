FROM ubuntu:latest
RUN mkdir /workspace
ADD ./workspace /workspace
WORKDIR /workspace

RUN apt-get update && yes | unminimize

RUN sudo apt -y install language-pack-ja
ENV TZ=Asia/Tokyo
ENV LANG=ja_JP.UTF8

RUN apt-get -y install sudo && \
    sudo apt-get -y install build-essential && \
    sudo apt-get -y install git && \
    sudo apt-get -y install vim && \
    sudo apt-get -y install man && \
    sudo apt-get -y install manpages-ja && \
    sudo apt-get -y install manpages-ja-dev && \
    apt-get install -y strace
