FROM ubuntu:jammy

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm
ENV USER user

RUN apt-get update && apt-get -y install sudo
RUN useradd --create-home --shell /bin/bash user && usermod -aG sudo user
RUN echo "user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/user && \
    chmod 0440 /etc/sudoers.d/user
RUN echo "Defaults verifypw = any" >> /etc/sudoers

USER user
WORKDIR /home/user

CMD
