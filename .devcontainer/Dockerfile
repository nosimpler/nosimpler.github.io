FROM ruby:3.2-bookworm

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        git \
        pkg-config \
        zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd --gid "$USER_GID" "$USERNAME" \
    && useradd --uid "$USER_UID" --gid "$USER_GID" -m -s /bin/bash "$USERNAME"

RUN gem install bundler -v "~> 2.5" --no-document

ENV BUNDLE_PATH=/home/vscode/.bundle \
    BUNDLE_BIN=/home/vscode/.bundle/bin \
    PATH=/home/vscode/.bundle/bin:$PATH

RUN mkdir -p /home/vscode/.bundle \
    && chown -R "$USERNAME:$USERNAME" /home/vscode/.bundle

WORKDIR /workspaces/nosimpler.github.io

USER vscode
