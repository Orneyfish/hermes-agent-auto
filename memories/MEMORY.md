# Core environment memory

- Host OS: CachyOS (Arch-based) with Hyprland.
- Hardware: NVIDIA RTX 3070 Ti laptop GPU with 8 GB VRAM; 30 GB RAM total; roughly 26 GB available in regular use.
- Hermes is installed in ~/.hermes/hermes-agent with the local venv under ~/.hermes/hermes-agent/venv.
- Ollama is available locally at http://localhost:11434/v1 and is configured with OLLAMA_CONTEXT_LENGTH=65536.
- Preferred local coding model is qwen2.5-coder:7b; smaller 1.5b is for quick edits and larger 14b is for slower reasoning tasks.
- Anthropic OAuth is not available because the user does not have Claude Max + extra credits; the direct Anthropic API key fallback remains a placeholder in ~/.hermes/.env until a key is added.
- Keep Hermes working from the user-local install path; avoid assuming root-level package installation is available.
