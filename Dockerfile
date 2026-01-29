FROM registry.access.redhat.com/ubi9/openjdk-21

USER root

ADD https://download.docker.com/linux/rhel/docker-ce.repo /etc/yum.repos.d/

RUN microdnf install -y \
    java-21-openjdk-devel \
    maven \
    docker-ce docker-ce-cli containerd.io docker-buildx-plugin && \
    microdnf clean all
