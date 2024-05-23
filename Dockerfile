FROM jenkins/inbound-agent:latest
USER root
RUN apt-get update && apt-get install -y sudo
USER jenkins
COPY . /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN apt update
RUN apt upgrade -y
RUN apt install vim -y
EXPOSE 80


