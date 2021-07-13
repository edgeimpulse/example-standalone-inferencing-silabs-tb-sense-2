# syntax = docker/dockerfile:experimental
FROM nobi/simplicity-studio-5:gecko-sdk-v3.1

WORKDIR /app

RUN apt update && apt install -y wget unzip
