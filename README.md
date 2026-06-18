# dside

> A Claude Agent Skill. _Replace this line with a one-sentence pitch._

A [Claude Skill](https://docs.claude.com/en/docs/claude-code/skills) that
<does the thing>. Skills extend Claude with custom instructions, scripts, and
resources that load automatically when relevant.

## What it does

- <Capability one>
- <Capability two>

## Install

Copy this folder into a Claude skills directory:

```bash
# Personal (all projects):
cp -r dside ~/.claude/skills/dside

# Project-scoped (this repo only):
cp -r dside .claude/skills/dside
```

Claude discovers the skill automatically by reading `SKILL.md`. Start a new
session and ask for something that matches the skill's description.

## Structure

```
dside/
├── SKILL.md            # Entry point: frontmatter + instructions (required)
├── scripts/            # Executable helpers Claude can run
│   └── example.sh
├── references/         # Detailed docs loaded on demand
│   └── guidelines.md
├── assets/             # Templates / fixtures used to produce output
├── README.md           # This file (for humans, not loaded by Claude)
└── LICENSE
```

## Usage

Once installed, just describe your task in natural language — for example:

> "<an example prompt that triggers the skill>"

## Development

- Keep `SKILL.md` concise; move depth into `references/`.
- The `name` field must be lowercase, hyphenated, and match the folder name.
- The `description` drives discovery — be specific and include real trigger words.

## License

MIT — see [LICENSE](./LICENSE).
