FROM amazonlinux:latest

RUN \
    amazon-linux-extras install aws-nitro-enclaves-cli \
    && yum clean all \
    && rm -rf /var/cache/yum


ENTRYPOINT ["nitro-cli"]
