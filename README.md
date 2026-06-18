# dside 🧠

> Decide better. A [Claude Skill](https://docs.claude.com/en/docs/claude-code/skills)
> that helps you reason through real decisions using **118 proven mental models**.

You describe a dilemma — _"can I go to another job or find a bonus in the current
one?"_ — and `dside` finds the mental models that best fit your situation, lets
you pick one, and applies it to **your specific circumstances**. No generic
textbook definitions: an actual lens on your actual decision.

## How it works

```
You:    /dside should I take the startup offer or stay at my stable job?

dside:  Here are 3 mental models that fit your situation:
        1. Opportunity Cost (Finance) — what you give up by staying is the real price.
        2. Regret Minimization (Decision) — which choice will 80-year-old you regret less?
        3. Asymmetry of Risk (Strategy) — compare the downside vs the upside of each path.

        Which one do you want to apply? (1–3, or ask for other options.)

You:    2

dside:  [applies Regret Minimization to your specific job decision...]
```

1. **Describe your situation** with `/dside <your decision>`.
2. **dside recommends up to 3 mental models** with a one-line reason each.
3. **You pick one** — dside fills a template applied to *your* situation.
4. **Keep going** — refine, apply another model, or commit to the decision.

## The library

All **118 mental models** live in
[`references/mental-models.json`](./references/mental-models.json), sourced from
the excellent [8020.app library](https://8020.app/library). Each model includes:

| Field | Meaning |
|-------|---------|
| `name` | The mental model's name |
| `category` | One of: Productivity, Strategy, Decision, Finance, Business, Personal, Psychology |
| `description` | One-line summary |
| `explanation` | What the model means |
| `example` | A concrete real-world example |
| `application` | How to actually use it |

Category breakdown: Psychology (29), Strategy (21), Productivity (18),
Decision (17), Business (15), Personal (10), Finance (8).

## Install

Copy this folder into a Claude skills directory:

```bash
# Personal (all your projects):
cp -r dside ~/.claude/skills/dside

# Project-scoped (one repo only):
cp -r dside .claude/skills/dside
```

Claude discovers the skill automatically by reading `SKILL.md`. Start a new
session and either invoke `/dside <situation>` or just describe a decision.

## Structure

```
dside/
├── SKILL.md                       # Entry point: the decision flow (required)
├── references/
│   └── mental-models.json         # All 118 mental models
├── assets/
│   └── model-template.md          # Template filled in when applying a model
├── README.md                      # This file (for humans)
├── LICENSE
└── .github/
    └── ISSUE_TEMPLATE/            # Templates for contributors
```

## Contributing

This is for the community — contributions welcome! 🙌

- **Add or correct a mental model?** Edit `references/mental-models.json` (keep
  the field shape consistent) and open a PR.
- **Improve the matching logic or template?** Edit `SKILL.md` /
  `assets/model-template.md`.
- **Found a bug or have an idea?** Open an issue — we have
  [templates](./.github/ISSUE_TEMPLATE) for bugs, new models, and feature
  requests.

Please keep model data faithful to its source and avoid duplicates (check the
`slug` field).

## Credits

Mental models data from [8020.app](https://8020.app/library) — a wonderful tool
for idea evaluation and task prioritization. This project simply makes that
library usable as a Claude Skill.

## License

MIT — see [LICENSE](./LICENSE).
