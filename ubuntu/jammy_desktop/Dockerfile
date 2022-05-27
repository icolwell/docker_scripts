FROM iancolwell/ubuntu:jammy_user

USER root

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apt-get update
RUN apt-get -y install \
    curl \
    debconf-utils \
    software-properties-common

RUN echo "resolvconf resolvconf/linkify-resolvconf boolean false" | debconf-set-selections
RUN apt-get -y install ubuntu-minimal ubuntu-standard ubuntu-desktop

RUN apt-get -y upgrade
RUN apt-get -y remove command-not-found

USER user
WORKDIR /home/user

CMD
