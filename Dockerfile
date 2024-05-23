# Ryan Collins 2024
# Ubuntu Development Container
# See README.md for instructions

FROM ubuntu:latest
LABEL maintainer="ryd3v <hello@ryd3v.com>"

# Install essential packages and setup user
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        git \
        gnupg \
        locales \
        python3 \
        wget \
        nano \
        build-essential \
        sudo && \
    locale-gen en_US.UTF-8 && \
    adduser --quiet --disabled-password --shell /bin/bash --home /home/ryd3v --gecos "User" ryd3v && \
    echo "ryd3v ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ryd3v && \
    chmod 0440 /etc/sudoers.d/ryd3v && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV TERM xterm
USER ryd3v
CMD ["bash"]
