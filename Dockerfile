FROM centos/s2i-base-centos7:latest

COPY assemble /usr/libexec/s2i/assemble
COPY run /usr/libexec/s2i/run
COPY save-artifacts /usr/libexec/s2i/save-artifacts
COPY usage /usr/libexec/s2i/usage

ENV PIP_NO_CACHE_DIR=off

EXPOSE 8080

USER 1001
