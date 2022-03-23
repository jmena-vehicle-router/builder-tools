FROM amazonlinux:2
LABEL org.opencontainers.image.source https://github.com/jmena-vehicle-router/builder-tools
RUN yum update -y \
 && yum install -y \
        awscli \
        boost-devel \
        cmake3 \
        gcc-c++ \
        git \
        make \
        protobuf-devel \
 && yum clean all \
 && rm -rf /var/cache/yum


# FROM ubuntu:latest
# RUN apt-get update \
# apt-get install -y \
# g++
# cmake
# libboost-random1.71-dev
# make
# libprotobuf-dev
# awscli
