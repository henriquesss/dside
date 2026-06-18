---
name: dside
description: >-
  REPLACE THIS — a third-person summary of what the skill does AND when Claude
  should use it. Include concrete trigger terms a user might say. Example:
  "Generates and validates OpenAPI specs from route definitions. Use when the
  user asks to create, lint, or update an API spec, or mentions Swagger/OpenAPI."
# Optional fields below — uncomment and edit as needed, then delete if unused.
# license: MIT
# Restrict the tools Claude may use while this skill is active. Omit to allow all.
# allowed-tools:
#   - Read
#   - Grep
#   - Bash
# metadata:
#   version: 0.1.0
#   author: Your Name <you@example.com>
---

# Dside

> One-sentence statement of the problem this skill solves.

## Overview

Describe what this skill does and the situations it's built for. Keep this
section short — Claude reads it to decide whether the skill applies. Lead with
the trigger conditions ("Use this when…") so the match is unambiguous.

## When to use this skill

Use this skill when:

- The user asks to <do the primary thing>.
- The user mentions <keyword>, <keyword>, or <keyword>.

Do **not** use this skill when:

- <Out-of-scope case>, which is handled by <other approach>.

## Instructions

Step-by-step guidance Claude should follow. Write it as a procedure, not prose.

1. **Gather inputs.** Identify <what you need> from the user or the workspace.
   If anything required is missing, ask before proceeding.
2. **Do the work.** Reference helper scripts in `scripts/` rather than inlining
   long commands. For deeper rules, point to `references/` (loaded on demand to
   keep this file small).
3. **Validate.** Confirm the result by <how you verify it> before reporting done.
4. **Report.** Summarize what changed and surface anything the user must decide.

## Resources

This skill bundles supporting files that are loaded only when needed:

- `scripts/` — executable helpers. Prefer calling these over long inline shell.
  - `scripts/example.sh` — replace with your real entry point.
- `references/` — detailed docs Claude can open when a task needs them.
  - `references/guidelines.md` — the in-depth rules; keep SKILL.md a summary.
- `assets/` — templates, boilerplate, or fixtures used to produce output.

## Examples

**User:** "<an example request that should trigger this skill>"

**Claude:** <a brief description of the ideal response/outcome>

## Notes

- Keep `SKILL.md` focused; move detail into `references/` so the context stays
  lean. Claude reads supporting files progressively, only when relevant.
- The `name` must be lowercase letters, numbers, and hyphens (≤64 chars) and
  match this directory's name.
- The `description` is the single most important field for discovery — make it
  specific and include the words users actually say.
