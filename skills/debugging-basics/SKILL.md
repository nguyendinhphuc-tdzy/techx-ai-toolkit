---
name: debugging-basics
description: Guides how to describe and handle a bug precisely when working with AI, instead of pasting the raw error message and hoping AI guesses correctly. ALWAYS use when a bug/error appears, when the user says "it's broken" without describing it precisely, or when AI has tried fixing the same bug 2 or more times without success — even when the user frames this as "AI doesn't understand what I mean" or "how do I prompt this correctly," this is always debugging-basics, not ai-prompting, because the root cause is a lack of precise error description (expected/actual/error message), not a prompting technique issue.
---

# Debugging Basics — Describe the Bug Precisely Before Asking AI to Fix It

## Why "paste the error and wait for AI to fix it" usually fails

A technical error message usually only tells you *where* the program stopped, not *why* it stopped there relative to what the user actually intended. AI (and you) need to understand the **expected behavior** before knowing what counts as "wrong."

## A systematic process for describing a bug

### Step 1 — Reproduce the bug consistently
Pin down the exact steps that make the bug happen again, the same way every time. If the bug "only happens sometimes," note what's different between the times it does and doesn't occur (different data? doing things fast vs. slow?).

### Step 2 — Separate three things clearly: expected / actual / error message
Write it out in exactly this structure:
- **I expected:** [correct behavior]
- **What actually happened:** [wrong behavior, described specifically]
- **Error message (if any):** [copy verbatim]

### Step 3 — Narrow the scope before asking AI
Ask yourself: at which step in the processing flow does the error occur? If possible, temporarily add logging/print statements for intermediate values to know exactly where the program stops, instead of guessing at the whole flow.

### Step 4 — Give AI the right context
Provide: the directly relevant code (not the whole file if not needed), the full error message, the reproduction steps, and what you've already tried (so AI doesn't repeat a direction that already failed).

### Step 5 — If AI fixes it 2-3 times without success, change strategy
This is a sign AI is missing important context or has misunderstood the root problem. Stop, carefully read the relevant code yourself, ask AI to explain what the current logic actually does (not what to fix) to understand it correctly before continuing.

## Common bug categories when building with AI, and how to handle them

| Bug type | Common cause | How to handle |
|---|---|---|
| Works on this machine, not on another | Missing environment variables, depends on local configuration | See `skills/production-readiness/` |
| AI "fixes" it but a new bug appears elsewhere | AI's local fix doesn't account for global impact | Provide more context on related files, verify with a Git diff before accepting |
| Bug only occurs with specific inputs | Missing edge-case handling | See `skills/testing-and-validation/` |
| Security bug (leaked key, wrong access permissions) | Usually doesn't show an obvious error — needs active review | See `skills/security-basics/` |

## Warnings for the agent

If the user just says "it's broken" or pastes a single error line without context, **ask them to fill in the expected/actual/error-message structure** from Step 2 before proposing any fix — this avoids guessing and fixing the wrong thing.

## Sources

This is a synthesis of common software debugging practice, not based on any specific quantitative study.
