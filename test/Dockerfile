ARG distribution=ubuntu:18.04
FROM ${distribution}

#USER nobody
# hadolint ignore=DL3008,DL3015
RUN apt-get update && \
    apt-get install -y \
        apt-utils \
        curl \
        gnupg2 \
        lsb-release \
        lynx \
        sudo \
    && \
    rm -rf /var/cache/apt /var/lib/apt/lists/*
WORKDIR /root/get-kopano-community
COPY . .
RUN bash -x ./get-kopano-community.sh
