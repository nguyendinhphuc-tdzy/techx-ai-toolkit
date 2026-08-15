---
name: ai-usage-logging
description: Guides logging AI usage throughout the build process, to prepare the "AI Usage Report" required for submission at the Semifinal round per the competition rules (different from the "Product Report" — see testing-and-validation, don't merge these two reports into one). ALWAYS use from the team's very first session using AI to build, don't wait until close to the deadline. Use IMMEDIATELY and proactively — without needing to be asked — every time the team edits, rejects, or changes their mind relative to AI's original suggestion while building, since this is the single most important moment to capture. Also use when the user asks "what goes in the AI usage report" or is preparing to submit for the Semifinal round.
---

# AI Usage Logging — Log AI Usage from Day One

## Why log from the start instead of waiting until submission

The competition rules (Section VII) require the AI Usage Report to state: the list of tools/models used, the specific role of each tool, the portion of work done by team members independent of AI, and an explanation of why AI created significant value. If a team waits until the end of the Semifinal round to try to remember 4 weeks of AI usage, most of the important details will already be forgotten — especially the human decisions made to adjust or reject AI's suggestions, which is the most convincing evidence for "the human contribution."

## How to log — simple, doable every day

An agent applying this skill should **proactively remind** the user to log after every work session involving significant AI use, using a short template (it doesn't need to be long):

```
[Date] [AI tool] [What AI was used for]
→ AI suggested: [brief summary]
→ Team kept: [which part]
→ Team edited/rejected: [which part, and why]
→ Decision made by: [team member's name]
```

Example:
```
Sep 15 — Claude Code — Generated room-scheduling logic
→ AI suggested: a greedy scheduling algorithm
→ Team kept: the proposed data structure
→ Team edited: switched to a priority-based algorithm, because plain greedy
   scheduled rooms with special equipment incorrectly — caught by the team
   through Round 2 test cases
→ Decision made by: Minh (Product Thinker)
```

Use the `templates/bao-cao-su-dung-ai-template.md` file as a continuous log — not something written once right before submission.

## What to log especially carefully

1. **Every time the team rejects or significantly edits an AI suggestion** — this is the clearest evidence of critical thinking, the criterion judges care about most.
2. **A decision NOT to use AI somewhere it could have been used** — shows the team understands AI's limits and isn't overusing it.
3. **A/B test results or with-AI/without-AI comparisons**, if done — the strongest evidence for "the solution is better because of AI."
4. **Who on the team did what** — avoid vague reporting like "the whole team"; judges may ask individual members directly during the Q&A.

## Warnings for the agent

- Don't invent log content if the user hasn't provided it — only compile/reformat what they actually did and reported.
- If the deadline is close and the log is nearly empty, encourage the team to spend 30-45 minutes together recalling things by timeline (Preliminary → Semifinal) instead of writing something generic — honest quality matters more than length.

## Sources

The reporting content requirement is quoted directly from Section VII.2 of the competition rules. The recommendation to "log from day one, don't wait until the end" is a synthesis of common project management practice, not based on a specific benchmark.
