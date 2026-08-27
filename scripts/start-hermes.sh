#!/usr/bin/env bash
set -euo pipefail

export PATH="$HOME/.local/bin:$HOME/.nvm/versions/node/v22.23.2/bin:$PATH"
export OLLAMA_CONTEXT_LENGTH="${OLLAMA_CONTEXT_LENGTH:-65536}"
export HERMES_HOME="${HERMES_HOME:-$HOME/.hermes}"

if ! pgrep -x ollama >/dev/null 2>&1; then
  echo "Starting Ollama daemon..."
  nohup env OLLAMA_CONTEXT_LENGTH=65536 ollama serve >/tmp/hermes-ollama.log 2>&1 &
  sleep 5
fi

if command -v hermes >/dev/null 2>&1; then
  echo "Launching Hermes Agent..."
  exec hermes
fi

if [ -x "$HOME/.hermes/hermes-agent/venv/bin/hermes" ]; then
  echo "Launching Hermes Agent from local venv..."
  exec "$HOME/.hermes/hermes-agent/venv/bin/hermes"
fi

echo "Hermes not found in PATH or local install." >&2
exit 1
