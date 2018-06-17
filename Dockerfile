FROM ubuntu:18.04

RUN \
  apt-get update && \
  apt-get install -y dpkg-dev build-essential libjpeg-dev libtiff-dev libsdl1.2-dev \
    libnotify-dev freeglut3 freeglut3-dev libsm-dev libgtk-3-dev && \
  apt-get install -y libgstreamer-plugins-base1.0-dev \
    libwebkit2gtk-4.0-dev libsdl2-dev && \
  apt-get install -y python3 python3-pip

RUN pip3 install --upgrade pip
RUN pip3 install numpy scipy
RUN pip3 install wxpython