FROM python:3.12-slim-bookworm
LABEL org.opencontainers.image.authors="thomas@finchsec.com"
# hadolint ignore=DL3005,DL3008,DL3013
RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get autoclean && \
    apt-get install texlive unzip wget ca-certificates rustc -y --no-install-recommends && \
    pip install --no-cache-dir ipython && \
    pip install --no-cache-dir pyx && \
    pip install --no-cache-dir cryptography && \
    wget -nv https://github.com/secdev/scapy/archive/refs/heads/master.zip && \
    unzip master.zip && \
    rm master.zip && \
    mv scapy-master/ scapy/ && \
    apt-get purge unzip wget ca-certificates rustc -y && \
    apt-get autoremove -y && \
    apt-get autoclean && \
    rm -rf /var/lib/dpkg/status-old /var/lib/apt/lists/*
CMD [ "/scapy/run_scapy" ]