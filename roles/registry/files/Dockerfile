# Build a minimal distribution container

FROM docker.repo:5000/ppc64le/debian:jessie

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y ca-certificates librados2 apache2-utils && \
    rm -rf /var/lib/apt/lists/*

COPY ./registry /bin/registry
COPY ./config-example.yml /etc/docker/registry/config.yml

VOLUME ["/var/lib/registry"]
EXPOSE 5000

ENTRYPOINT ["/bin/registry"]
CMD ["/etc/docker/registry/config.yml"]
