FROM iancolwell/xenial_user

USER root

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

# RUN echo "resolvconf resolvconf/linkify-resolvconf boolean false" | debconf-set-selections
# RUN apt-get update && apt-get install -y ubuntu-minimal ubuntu-standard ubuntu-desktop

RUN apt-get update && apt-get install -y \
    debconf-utils \
    software-properties-common

RUN echo "mysql-server mysql-server/root_password password LocalPPUpw" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password LocalPPUpw" | debconf-set-selections

RUN apt-get install -y mysql-server mysql-client libmysqlclient-dev python-mysqldb python-pip

RUN apt-get -y upgrade

USER user

CMD
