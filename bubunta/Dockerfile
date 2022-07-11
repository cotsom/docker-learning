# syntax=docker/dockerfile:1
FROM ubuntu:latest
WORKDIR /code
RUN apt-get update && apt-get install -y neofetch
#VOLUME /opt/bar .
COPY . .
CMD [ "echo", "hello" ]