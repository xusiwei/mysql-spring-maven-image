FROM ubuntu:16.04

ENV MYSQL_ROOT_PASSWORD "RootPass"

RUN apt-get update -y
RUN echo "mysql-server mysql-server/root_password password $MYSQL_ROOT_PASSWORD" | debconf-set-selections; \
    echo "mysql-server mysql-server/root_password_again password $MYSQL_ROOT_PASSWORD" | debconf-set-selections; \
    apt-get install -y mysql-server
RUN apt-get install -y mysql-client openjdk-8-jdk maven

