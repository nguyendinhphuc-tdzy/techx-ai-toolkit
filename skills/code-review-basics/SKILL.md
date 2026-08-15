---
name: code-review-basics
description: Guides reading and evaluating the QUALITY of AI-generated code before accepting it, for both non-technical people and people with a coding background. ALWAYS use before considering an AI-written feature "done," when about to merge code into the main branch (evaluating whether the code is correct — the Git mechanics themselves use git-basics), or when someone needs to explain an AI-written piece of code to another team member. When code involves authentication/payments/sensitive data, use IN PARALLEL with security-basics, not as a replacement for it.
---

# Code Review Basics — Understand Before You Accept

## Why "blind acceptance" doesn't work

The competition rules require the team to understand and be able to defend their solution in front of the judges. If nobody on the team reads and understands the code AI wrote, the team will struggle when asked "why did you choose this approach" — and more importantly, will fail to catch hidden bugs before they cause real harm (data loss, leaked information, the product crashing during the demo).

## A reading checklist, even if you don't know how to code

You don't need to understand every line of syntax for a review to be useful. Focus on the following questions — ask AI to explain in plain language if needed:

1. **Where does the data flow?** Where is user input stored, where is it sent?
2. **What happens on invalid or empty input?** Ask AI to point out the code handling this case — if there isn't any, that's a gap that needs filling.
3. **Is there error handling (try-catch)?** If a step fails (network error, AI API doesn't respond), does the user see an understandable message or a blank screen?
4. **Does anything "look off" compared to the rest of the code?** A sudden style shift, unusually complex code for a simple task — a sign to ask AI to explain it more or to rewrite it more simply.

## For people with a coding background — check these too

- Is there duplicate logic that should be extracted into a shared function?
- Is the code calling an API/database more times than necessary (impacting performance, cost)?
- Do variable/function names actually describe their meaning, or are they generic names AI made up?
- Compare against `git diff` before committing — read exactly what changed, don't just trust "AI says it fixed the right spot."

## Quick review process for a Pull Request/change within the team

1. The author (or the person who prompted AI to write it) summarizes in 2-3 sentences: what this change does, why it's needed.
2. The reviewer reads through using the checklist above, asking follow-up questions where something is unclear.
3. If it's fine, merge into the main branch (`skills/git-basics/`); if not, write down exactly what needs fixing, not just "not good enough."

## Warnings for the agent

When the user says "AI's done writing it, can I just merge it now," **don't confirm right away** — walk them through at least 3-4 questions from the checklist above first.

## Sources

A synthesis of common code review practice in software engineering, not based on a specific quantitative study.
