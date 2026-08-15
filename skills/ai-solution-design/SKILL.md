---
name: ai-solution-design
description: Guides deciding exactly what role AI should play in a solution, after the problem has already been clearly framed (use after the problem-framing skill). ALWAYS use once the user has a problem description and needs to decide the solution architecture, when writing the "AI Solution Proposal" section of a competition submission, or when evaluating "is AI actually necessary here?" DO NOT use if the problem hasn't been clearly framed yet — go back to problem-framing first. DO NOT use to compare or pick a specific AI model/tool using data (that's benchmark-literacy) — this skill only decides what AI should do, not which tool to use.
---

# AI Solution Design — Designing AI's Role in the Solution

## Core principle

Per the competition's judging criteria: **AI is not a mandatory core technology** — judges evaluate the significant value AI creates, not the number of AI tools used or model complexity. An agent applying this skill must help the user answer the underlying question: **"Is this solution actually better because of AI, compared to a non-AI approach?"** If the answer isn't clear, don't rush to bolt AI on just because this is an AI competition.

## Design process

### Step 1 — List out the steps in the user journey
Map out the entire flow of how the user interacts with the solution, step by step, **before** thinking about where AI fits in. Example: Find an empty room → View the schedule → Pick a time → Book the room → Get confirmation.

### Step 2 — For each step, ask: is this step hard because of missing data, missing judgment, or missing speed?
AI creates the clearest value when a step needs: processing unstructured data (text, images, speech), personalization based on context, content generation, or decisions based on multiple fuzzy signals. AI is **not** a good fit for: simple logic with clear rules (use regular code), looking up structured data (use a regular database/query), or tasks requiring absolute precision with zero tolerance for error (use rule-based logic).

### Step 3 — Pick the 1-2 highest-value AI touchpoints, don't spread AI everywhere
A product that stuffs AI into every step is usually diluted and hard to quality-control. Prioritize touchpoints where: (a) removing AI would clearly degrade the experience, (b) the before/after difference with AI is measurable.

### Step 4 — Clearly define what AI does vs. what humans/regular logic do
Write it out explicitly as a table: "AI is responsible for [X]" / "Regular (rule-based) logic is responsible for [Y]" / "Humans (users or the operations team) are responsible for [Z]." This is exactly what judges will ask about during the Q&A defense — the team must be able to answer it, not just the AI.

### Step 5 — Identify the risks and limits of AI in the solution
For each AI touchpoint, answer: what happens when AI is wrong/hallucinates? Is there a mechanism for the user to catch and correct it? This is a sign of a team that truly understands their product, not one that just "lets AI handle it."

### Step 6 — Choose the right AI tool/model — after the role is clear, not before
Only at this step should a specific tool be chosen (see `resources/cong-cu-ai-theo-giai-doan.md`). Selection criteria: fit for the task, cost/free-tier limits, ease of integration within 6 weeks — not choosing a tool because it's "hot right now."

## Expected output

A short table:

| Step in the user journey | Who/what handles it | AI's role (if any) | Value AI creates vs. not having AI |
|---|---|---|---|

Plus a short explanation (3-4 sentences) directly answering: "AI creates significant value here because..." — this is the raw material for the "AI Solution Proposal" section of the Preliminary Round submission.

## Warnings for the agent

- If the user proposes using AI for a task that clearly-defined rule-based logic would do better (cheaper, faster, more accurate), **say so directly** — even though this is an AI competition. Judges evaluate the *soundness* of applying AI, not whether AI is present.
- Avoid designing a solution that depends on AI at a step with zero tolerance for error (e.g., calculating tuition, identity verification) without a regular-logic verification layer alongside it.

## Sources

The principle "AI is not a mandatory core technology, what matters is the value created" is quoted directly from Section VII of the competition rules. The rest of the design process is a synthesis of common product/AI solution design practice, not based on a specific benchmark or quantitative study. To choose a tool/model at Step 6 based on evidence rather than gut feeling, see `skills/benchmark-literacy/` and `resources/benchmark-va-cach-doc.md`.
