#!/bin/sh
set -e

VERSION="${VERSION:-"latest"}"

# Check if npm is available
if ! command -v npm > /dev/null 2>&1; then
    echo "ERROR: npm is not installed. Please add the node feature before this one."
    echo "Add \"ghcr.io/devcontainers/features/node:1\": {} to your devcontainer.json"
    exit 1
fi

# Install codex
if [ "$VERSION" = "latest" ]; then
    npm install -g @openai/codex
else
    npm install -g @openai/codex@${VERSION}
fi

echo "OpenAI Codex CLI installed successfully."
codex --version || true
