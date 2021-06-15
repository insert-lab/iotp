#!/bin/bash

# Print commands and exit on errors
set -xe

DEBIAN_FRONTEND=noninteractive sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
DEBIAN_FRONTEND=noninteractive sudo add-apt-repository -y ppa:webupd8team/atom

apt-get update

KERNEL=$(uname -r)
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
apt-get install -y --no-install-recommends \
  atom \
  autoconf \
  automake \
  apt-transport-https \
  bison \
  build-essential \
  ca-certificates \
  cmake \
  cpp \
  curl \
  emacs24 \
  flex \
  git \
  hping3 \
  iperf \
  iperf3 \
  nmap \  
  libboost-dev \
  libboost-filesystem-dev \
  libboost-iostreams1.58-dev \
  libboost-program-options-dev \
  libboost-system-dev \
  libboost-test-dev \
  libboost-thread-dev \
  libc6-dev \
  libevent-dev \
  libffi-dev \
  libfl-dev \
  libgc-dev \
  libgc1c2 \
  libgflags-dev \
  libgmp-dev \
  libgmp10 \
  libgmpxx4ldbl \
  libjudy-dev \
  libpcap-dev \
  libreadline6 \
  libreadline6-dev \
  libssl-dev \
  libtool \
  linux-headers-$KERNEL\
  lubuntu-desktop \
  make \
  mktemp \
  pkg-config \
  python \
  python-dev \
  python-ipaddr \
  python-pip \
  python-scapy \
  python-setuptools \
  sublime-text-installer \
  tcpdump \
  tcpreplay \
  fonts-noto \
  fonts-roboto \
  unzip \
  vim \
  wget \
  xcscope-el \
  xterm

apt-get install -y --no-install-recommends ttf-mscorefonts-installer
rm -rf /root/.cache/matplotlib/*
find /home/ -mindepth 1 -maxdepth 1 -name '*' -exec rm -rf {}/.cache/matplotlib/* \;