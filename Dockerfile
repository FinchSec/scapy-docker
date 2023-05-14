FROM python:3.11-slim-bullseye
LABEL org.opencontainers.image.authors="thomas@finchsec.com"
# hadolint ignore=DL3005,DL3008
RUN apt-get update && \
    apt-get dist-upgrade -y && \
            apt-get autoclean && \
            apt-get install texlive python3-cryptography -y --no-install-recommends && \
            rm -rf /var/lib/dpkg/status-old /var/lib/apt/lists/*
# hadolint ignore=DL3013
RUN pip install --no-cache-dir ipython && \
    pip install --no-cache-dir pyx

RUN git clone https://github.com/secdev/scapy
CMD [ "/scapy/run_scapy" ]