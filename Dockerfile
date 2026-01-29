FROM registry.access.redhat.com/ubi9/openjdk-21

USER root

RUN microdnf install -y java-21-openjdk-devel maven && \
    microdnf clean all
