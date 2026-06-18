# Guidelines (reference)

This file holds the in-depth rules, edge cases, and domain knowledge that don't
belong in `SKILL.md`. Claude loads it only when a task needs the detail, which
keeps the always-on context small.

Put things here like:

- Detailed conventions and formatting rules.
- Decision tables for ambiguous cases.
- Examples of correct and incorrect output.
- Links to external specs or documentation.

## Example: a decision table

| Situation            | Action                          |
| -------------------- | ------------------------------- |
| Input is missing X   | Ask the user before continuing. |
| Input conflicts with Y | Prefer Y and note the override. |

## Example: anti-patterns to avoid

- ❌ Don't do <the wrong thing> — it causes <problem>.
- ✅ Do <the right thing> instead.
