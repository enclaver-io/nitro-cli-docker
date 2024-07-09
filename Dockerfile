FROM amazonlinux:latest

RUN \
    dnf install aws-nitro-enclaves-cli aws-nitro-enclaves-cli-devel -y \
    && dnf clean all \
    && rm -rf /var/cache/yum

WORKDIR /build

ENTRYPOINT ["nitro-cli"]
