---
name: dside
description: >-
  Helps the user reason through a real decision or dilemma using proven mental
  models. Given a situation (a choice, a trade-off, "should I…", "how do I
  decide…", career/finance/relationship/business/strategy questions), it
  recommends the 3 most relevant mental models from a 118-model library, lets
  the user pick one, then applies that model to their specific situation and
  guides the conversation from there. Use whenever the user describes a decision,
  dilemma, prioritization problem, or asks to "think this through".
metadata:
  version: 1.0.0
  author: Lucas Henriques <henriques.pessoal@gmail.com>
  models: 118
  source: https://8020.app/library
---

# dside — decide with mental models

> Turn a fuzzy decision into a structured one by applying the right mental model.

## Overview

`dside` is a decision-support skill. The user describes a situation; the skill
matches it against a curated library of **118 mental models** (in
`references/mental-models.json`) and walks the user through applying the best fit.

Use this skill when the user:

- Describes a decision or dilemma ("should I take the new job or stay?", "do I
  ship now or polish?", "rent vs buy").
- Asks how to prioritize, evaluate options, or weigh trade-offs.
- Asks to "think through", "reason about", or "get a framework for" a situation.
- Invokes it directly, e.g. `/dside can I go to another job or find a bonus in
  the current one?`

Do **not** use this skill for factual lookups, coding tasks, or when the user
just wants a direct answer with no reasoning framework.

## The flow

Follow these steps in order. **Steps 1–3 are the core loop; step 4 onward is a
normal conversation.**

### Step 1 — Understand the situation

Read the situation the user gave with the invocation. If it is too vague to match
models well (no real options, stakes, or goal), ask **one** concise clarifying
question. Otherwise proceed — do not over-interrogate.

Extract and hold onto:
- **The decision/question** (what is actually being chosen).
- **The options** (if stated).
- **The goal / what "good" looks like** for this person.
- **Constraints** (time, money, risk, relationships, etc.).

### Step 2 — Recommend up to 3 mental models

1. Load `references/mental-models.json`. Each entry has: `name`, `category`,
   `description`, `explanation`, `example`, `application`.
2. Select the **3 most relevant** models for this specific situation. Favor
   variety (don't return three near-duplicates) and genuine fit over fame.
3. Present them as a short numbered list. For each: the **name**, its
   **category**, and **one line** on why it fits *this* situation.
4. Ask the user to pick one (by number or name). Mention they can ask for
   different options.

Use this format:

```
Here are 3 mental models that fit your situation:

1. **<Name>** _(<Category>)_ — <one line: why it fits your situation>
2. **<Name>** _(<Category>)_ — <one line: why it fits your situation>
3. **<Name>** _(<Category>)_ — <one line: why it fits your situation>

Which one do you want to apply? (1–3, or ask for other options.)
```

### Step 3 — Apply the chosen model

Fill the template in `assets/model-template.md` using:
- The selected model's fields from the JSON (`explanation`, `application`).
- The **specific details of the user's situation** from Step 1 — do not stay
  generic. Map the model's lens onto their actual options and constraints.

The output should make the user see their situation differently and surface a
concrete next step or question, not just define the model.

### Step 4 onward — Continue normally

After the model is applied, drop the rigid format. Have a normal conversation:
answer follow-ups, apply a second model if the user wants, refine the analysis,
or help them commit to a decision. The structured loop was just the on-ramp.

## Resources

- `references/mental-models.json` — all 118 mental models with descriptions,
  explanations, examples, and application notes. Source: https://8020.app/library
- `assets/model-template.md` — the fill-in template used in Step 3.

## Notes

- Always ground the model in the user's *specific* situation; generic textbook
  output is the main failure mode to avoid.
- Cap recommendations at 3 so the choice stays easy.
- Don't lecture. The user wants to decide, not study.
