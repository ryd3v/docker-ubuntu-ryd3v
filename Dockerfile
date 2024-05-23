FROM ubuntu:latest
LABEL maintainer="ryd3v <hello@ryd3v.com>"

# Install essential packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        git \
        gnupg \
        locales \
        python3 \
        wget \
        nano \
        sudo && \
    locale-gen en_US.UTF-8 && \
    # Add and configure user
    adduser --quiet --disabled-password --shell /bin/bash --home /home/ryd3v --gecos "User" ryd3v && \
    echo "ryd3v ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ryd3v && \
    chmod 0440 /etc/sudoers.d/ryd3v && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV TERM xterm
USER ryd3v
CMD ["bash"]

# build: docker build -f .\Dockerfile -t ubuntu:ryd3v .
# run: docker run -it -v ${PWD}:/mnt ubuntu:ryd3v 