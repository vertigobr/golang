# Base GoLang Image

FROM vertigo/dev-base:latest

MAINTAINER Andre Fernandes

USER root

RUN yum -y install golang && \
    yum clean all

USER developer

