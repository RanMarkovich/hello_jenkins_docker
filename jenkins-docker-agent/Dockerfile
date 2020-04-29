FROM jenkins/jenkins:lts
USER root
RUN apt-get update \
    && apt-get -y install \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common

RUN curl -sSL https://get.docker.com/ | sh

RUN usermod -aG docker jenkins

CMD dockerd