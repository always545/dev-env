#!/bin/bash

mkdir -p ./agent-bin

# Claude Code
curl -fL \
  "https://github.com/anthropics/claude-code/releases/latest/download/claude-linux-x64.tar.gz" \
  -o /tmp/claude.tar.gz

tar -xzf /tmp/claude.tar.gz -C ./agent-bin
rm /tmp/claude.tar.gz

# Codex CLI is installed as a complete npm package during the image build.
# Set CODEX_VERSION in .env and rebuild to change its version.
