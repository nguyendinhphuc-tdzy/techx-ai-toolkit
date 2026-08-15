---
name: ai-assisted-build
description: Guides a systematic process for building an MVP with an AI coding assistant (Claude Code, Cursor, ChatGPT, Lovable, Replit Agent...), countering unchecked "vibe coding." ALWAYS use once the user ALREADY has a clear AI role (via ai-solution-design) and is starting to code/build the product, or when technical planning is needed for the MVP before the Semifinal round. DO NOT use if the idea/problem has NOT yet been framed in the conversation — even if the user says "just let AI write the code" or "just prompt it and see if it runs," go back to problem-framing (then ai-solution-design) first.
---

# AI-Assisted Build — Building an MVP Systematically, Not Vibe Coding

## What "vibe coding" is, and why it fails in this competition

Vibe coding: open up AI, type a vague prompt, run it, paste any error back into AI, repeat until "it sort of works" — nobody on the team actually understands the architecture, nothing is verifiable, and fixing one thing breaks another. Products built this way typically: (1) run on the author's machine but not on anyone else's, (2) collapse the moment the demo hits anything outside the rehearsed script, (3) leave the team unable to explain their technical choices when judges ask during the Q&A — directly violating the competition rules' requirement for genuine "human thinking and decision-making."

An agent applying this skill is responsible for **keeping the user on the process below**, even when they want to "just get it done fast." Following the process properly is still faster overall than vibe coding, because it avoids the fix-a-bug-create-a-new-bug loop.

## The 6-step process

### Step 1 — Write the MVP scope spec before writing the first prompt
Nail down: the 3-5 **core** features that alone prove the AI value designed in the `ai-solution-design` step. Write a "Not in this MVP" list alongside it — this is the most commonly skipped step and the one that causes the most delay. A good 6-week MVP usually has 3-5 features, not 15.

### Step 2 — Choose the simplest architecture that meets the requirements
Don't pick a complex architecture "to look professional" if the MVP doesn't need it. Prioritize: a framework the AI coding assistant knows well (Next.js, React + FastAPI, etc. — AI is trained most heavily on popular stacks, so it supports them better), a simple database (Postgres/SQLite/Supabase), a clear frontend/backend split if applicable, and environment variable management from day one instead of hardcoding API keys into the code.

### Step 3 — Break the build into verifiable units
Don't prompt "build the whole app for me." Break it down by feature, and each feature by: (a) data model, (b) processing logic, (c) UI, (d) AI integration (if any). After each unit, **run it and confirm it works correctly before asking AI for the next part.** This is the core difference between systematic building and vibe coding.

### Step 4 — Write clear prompts with context and acceptance criteria
A good prompt includes: the specific goal of this piece of code, context (relevant existing code, current project structure), constraints (libraries in use, code style), and criteria for knowing when it's correct ("when the email format is invalid, show error X"). Avoid prompts like "build me a login feature" with no context attached.

### Step 5 — Read and understand the AI-generated code before accepting it
Don't copy-paste without reading. At minimum: understand where the data flows, whether sensitive information (passwords, API keys) is being stored in the wrong place, and whether error/empty cases are handled. If you don't understand a piece of code AI wrote, ask AI to explain it before using it — don't let code exist in the product that nobody on the team understands, because judges will ask about it.

### Step 6 — Use version control (Git) from the very first commit
Commit after every unit that works, with a clear message. Practical reason: when AI "fixes" something and breaks more, you have a safe rollback point instead of rebuilding from scratch. This is also a required habit for the deploy step (`production-readiness`) to go smoothly.

## Checklist before considering a feature "done"

- [ ] It actually runs, not just "AI says it's done"
- [ ] Handles at least one wrong/missing input case
- [ ] At least one other team member (not the one who wrote the prompt) understands the logic
- [ ] Committed to Git with a clear description

## When AI gets stuck in a fix loop

If you've asked AI to fix the same bug 2-3 times without success: stop, read the error yourself, summarize the problem in your own words before prompting again — don't paste the same error and hope it's different this time. The cause is usually that AI is missing important context or has misunderstood the underlying problem — provide the actual relevant code instead of letting AI guess.

## Related

- Before this step: `ai-solution-design` (AI's role is already known)
- In parallel: `ai-usage-logging` (log as you build, don't wait until submission), `ai-prompting` (writing effective prompts), `git-basics` (safety net for when AI breaks the code)
- After this step: `code-review-basics`, `testing-and-validation`, then `production-readiness`

## Sources

The warning about the risk of unsystematic building ("vibe coding") is backed by real quantitative evidence: a randomized controlled trial by METR with 16 experienced developers found they were 19% slower when using AI without a method, despite being confident it would make them 24% faster (arxiv.org/abs/2507.09089). The rest of the 6-step process is a synthesis of common software practice, not the result of a benchmark specific to this process. Details: `resources/nguon-tham-khao.md`.
