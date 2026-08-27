# Hermes Agent Setup

This repository packages the local Hermes Agent setup for this machine into a
clean folder structure with launch scripts, tracked config snapshots, a custom
planning skill, and a persistent local backup.

## Folder layout

```text
.
├── backup/
│   └── hermes-persistent/   # local full backup, kept on disk and ignored by git
├── config/
│   └── config.yaml          # tracked Hermes config snapshot
├── memories/
│   ├── MEMORY.md
│   └── USER.md
├── scripts/
│   ├── start-hermes.sh
│   ├── start-hermes-anthropic.sh
│   └── start-hermes-planning.sh
└── skills/
    └── planning/
        └── grill-me/
            └── SKILL.md
```

## Quick start

### Default local startup

```bash
bash "/home/orneyfish/Projects/Hermes Agent Auto/scripts/start-hermes.sh"
```

Starts Ollama if needed and launches Hermes with the local Ollama default.

### Anthropic SSO / OAuth startup

```bash
bash "/home/orneyfish/Projects/Hermes Agent Auto/scripts/start-hermes-anthropic.sh"
```

Launches the Hermes model picker so you can try the Anthropic OAuth login flow
from a real terminal session.

### Planning startup

```bash
bash "/home/orneyfish/Projects/Hermes Agent Auto/scripts/start-hermes-planning.sh"
```

Starts Hermes with the reasoning model `qwen2.5-coder:14b-64k` for planning and
deeper critique.

## Planning skill

The `grill-me` skill in `skills/planning/grill-me/SKILL.md` is a planning
stress-test prompt. It is meant to challenge plans, surface hidden assumptions,
and identify high-risk decision points before execution.

## Persistent backup

The full local Hermes backup is stored at:

```text
/home/orneyfish/Projects/Hermes Agent Auto/backup/hermes-persistent/
```

This backup is intentionally kept out of git because it can contain large
artifacts and sensitive local state such as caches, SQLite history, and local
environment files.

## Notes

- Anthropic OAuth may fail unless the account is eligible for Hermes' supported
  Anthropic login flow.
- The local Ollama route is configured and working as the primary fallback.
- The 64K model variants were created for longer agentic sessions and planning
  workflows.
