#
# This Dockerfile builds a recent curl with HTTP/2 client support, using
# a recent nghttp2 build.
#
# See the Makefile for how to tag it. If Docker and that image is found, the
# Go tests use this curl binary for integration tests.
#

FROM ubuntu:trusty
USER root



# Certbot
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:certbot/certbot && \
    apt-get update

RUN apt-get install -y certbot
