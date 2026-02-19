# CMO Sub-Agent Setup

Created sub-agent definition at `.subagents/cmo/AGENT.md`.

Also copied all 18 marketing skills from antigravity-marketing repo:
- research
- positioning  
- creative-strategist
- direct-response
- lead-magnet
- email-sequences
- frontend-design
- visual-producer
- vibe-critic
- deploy-manager
- orchestrator
- And more...

## To Enable Sub-agent Spawning

Currently only `main` is allowed to spawn. To add CMO:

1. Configure allowed agents in OpenClaw config
2. Or update the allowlist to include "cmo"

## Usage Once Enabled

```
Spawn the CMO sub-agent:
- Task: "Run a marketing campaign for [product]"
- The CMO will orchestrate research → positioning → creative → deploy
```

Want me to help configure the sub-agent spawning?
