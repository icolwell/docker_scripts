FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN echo "resolvconf resolvconf/linkify-resolvconf boolean false" | debconf-set-selections
RUN apt-get update && apt-get install -y ubuntu-minimal ubuntu-standard ubuntu-desktop

RUN apt-get update && apt-get install -y \
    curl \
    debconf-utils \
    software-properties-common

RUN apt-get -y upgrade

RUN useradd --create-home --shell /bin/bash user && usermod -aG sudo user
RUN echo "user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/user && \
    chmod 0440 /etc/sudoers.d/user

USER user
WORKDIR /home/user

CMD
