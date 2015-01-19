FROM hkupty/base:latest
MAINTAINER Henry "Ingvij" Kupty <hkupty@gmail.com>

WORKDIR /opt/gradle

RUN pacman -Sy j{re,dk}8-openjdk wget unzip --noconfirm 
RUN wget https://services.gradle.org/distributions/gradle-2.1-all.zip
RUN unzip gradle-2.1-all.zip && cd gradle-2.1/bin && export PATH=$PATH:$(pwd)

ENTRYPOINT /opt/gradle/gradle-2.1/bin/gradle
