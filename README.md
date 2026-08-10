# DevContainer Feature: Codex CLI

A Dev Container feature to install [OpenAI Codex CLI](https://github.com/openai/codex) — a terminal-based coding agent — into your development environment.

## Usage

Add the Codex feature to your `devcontainer.json`:

```json
{
    "features": {
        "ghcr.io/dirien/devcontainer-feature-codex/codex:0": {}
    }
}
```

> **Note:** This feature requires Node.js. Make sure to include the node feature or have Node.js pre-installed in your base image.

### Options

| Option    | Type   | Default  | Description                                                                            |
|-----------|--------|----------|----------------------------------------------------------------------------------------|
| `version` | string | `latest` | Version of @openai/codex to install (e.g., `0.147.0`). Set to `latest` for the latest.  |

#### Pin a specific version

```json
{
    "features": {
        "ghcr.io/dirien/devcontainer-feature-codex/codex:0": {
            "version": "0.147.0"
        }
    }
}
```

### Authentication

Set the `OPENAI_API_KEY` environment variable in your `devcontainer.json`:

```json
{
    "features": {
        "ghcr.io/dirien/devcontainer-feature-codex/codex:0": {}
    },
    "remoteEnv": {
        "OPENAI_API_KEY": "${localEnv:OPENAI_API_KEY}"
    }
}
```

Or sign in with your ChatGPT credentials by running `codex` after the container starts.
