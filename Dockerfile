FROM amazonlinux:2
LABEL org.opencontainers.image.source https://github.com/jmena-vehicle-router/builder-tools
RUN yum update -y \
 && yum install -y \
        awscli \
        cmake3 \
        gcc \
        protobuf-devel \
 && yum clean all \
 && rm -rf /var/cache/yum

