FROM mcr.microsoft.com/vscode/devcontainers/base:0-ubuntu-22.04

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential=12.* \
    openjdk-11-jre=11.* \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN curl -L https://github.com/itsallcode/openfasttrace/releases/download/3.6.0/openfasttrace-3.6.0.jar  --output /usr/bin/openfasttrace.jar \
    && shasum /usr/bin/openfasttrace.jar \
    && echo "00c034d0d4494a0af9162dd58e39f5d150a3f8e2  /usr/bin/openfasttrace.jar" | shasum -c-

USER vscode
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN curl https://sh.rustup.rs -sSf | bash -s -- \
    -y \
    --profile default \
    --default-toolchain 1.66.0 \
    --component llvm-tools-preview
ENV PATH="/home/vscode/.cargo/bin:${PATH}"
