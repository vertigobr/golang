# Base GoLang Image

FROM vertigo/dev-base:latest

MAINTAINER Andre Fernandes

USER root

RUN yum -y install golang && \
    yum clean all

RUN mkdir -p /go/src /go/bin && chmod -R 777 /go
ENV GOPATH /go
ENV PATH /go/bin:$PATH
WORKDIR /go

USER developer

