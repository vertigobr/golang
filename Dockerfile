# Base GoLang Image

FROM vertigo/dev-base:latest

MAINTAINER Andre Fernandes

USER root

RUN wget http://registry.vtg/files/golang/go1.5.1.linux-amd64.tar.gz -q -O /opt/golang.tar.gz && \
    tar -C /usr/local -xzf /opt/golang.tar.gz && \
    yum -y install glibc-static && \
    yum clean all && \
    rm /opt/golang.tar.gz

RUN mkdir -p /go/src /go/bin && chmod -R 777 /go
ENV GOPATH /go
ENV PATH $PATH:/usr/local/go/bin:/go/bin

WORKDIR /go

