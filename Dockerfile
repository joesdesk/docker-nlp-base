FROM ubuntu:18.04

# Install Python
RUN \
  apt-get update && \
  apt-get install -y python3 python3-pip

RUN pip3 install --upgrade pip
RUN pip3 install gensim

# Install R
RUN \
  apt-get install r-base
