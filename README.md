# Hcxtools container

Docker for https://github.com/secdev/scapy. Rebuilt daily.

## Pulling

### DockerHub

[![Docker build and upload](https://github.com/FinchSec/scapy-docker/actions/workflows/docker.yml/badge.svg?event=push)](https://github.com/FinchSec/scapy-docker/actions/workflows/docker.yml)

URL: https://hub.docker.com/r/finchsec/scapy

`sudo docker pull finchsec/scapy`

## Running

`sudo docker run --rm -it --privileged --net=host finchsec/scapy`
