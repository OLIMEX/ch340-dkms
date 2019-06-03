FROM ubuntu:18.04

# Install packages
RUN apt-get update
RUN apt-get install -y dkms

# Build module
WORKDIR /root/ch340-dkms
COPY Makefile ch340.c dkms.conf ./
RUN dkms build .
RUN dkms install ch340/1.0.0
