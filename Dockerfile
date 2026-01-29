FROM registry.access.redhat.com/ubi9/openjdk-21

USER root

RUN microdnf -y install dnf-plugins-core && \
    microdnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo && \
    microdnf install -y \
    java-21-openjdk-devel \
    maven \
    docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin && \
    microdnf clean all
