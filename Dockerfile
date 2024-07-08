FROM amazonlinux:latest

RUN \
    yum install -y aws-nitro-enclaves-cli \
    && yum clean all \
    && rm -rf /var/cache/yum


ENTRYPOINT ["nitro-cli"]
