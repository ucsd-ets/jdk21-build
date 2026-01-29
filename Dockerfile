FROM registry.access.redhat.com/ubi9/openjdk-21

USER root

RUN microdnf install -y \
    java-21-openjdk-devel \
    maven \
    docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin && \
    microdnf clean all
