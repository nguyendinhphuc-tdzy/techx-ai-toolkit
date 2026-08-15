---
name: testing-and-validation
description: Guides testing an MVP with real users and checking technical quality before considering the product finished. ALWAYS use when the user says the MVP is "done" or is about to record the demo video/submit for the Semifinal round, when preparing the "Product Report" (different from the "AI Usage Report" — see ai-usage-logging, don't merge these two reports into one), or when evaluating whether the product is ready to present in front of the judges. Different from production-readiness (which covers infrastructure/access links) — this skill covers whether the features are correct and honestly represented. Use after ai-assisted-build.
---

# Testing & Validation — Verify for Real, Don't Fool Yourself

## Core principle

The competition rules explicitly state: "staging a demo that misrepresents the truth results in a point deduction or disqualification," and the team must "present features, data, and completeness honestly." An agent applying this skill helps the user clearly distinguish **"it works when I click things in the exact order I rehearsed"** from **"it actually works"** — two very different things.

## Two layers of testing needed

### Layer 1 — Technical (functional) testing
For every core feature, ask and try:
- What happens when the user enters something wrong, empty, or clicks rapidly in succession?
- What happens if the network drops mid-way, or the AI API returns an error/times out?
- If multiple users act at the same time, does data get overwritten/mixed up?
- For AI-powered features: try at least 5-10 different inputs, including "hard" or deliberately tricky ones — record the rate of correct/useful AI responses, don't just try one "clean" case and record the video.

### Layer 2 — Real user validation
This is the step most often skipped in a rushed 6 weeks, yet it's the most convincing evidence in front of the judges. At minimum:
- Give the product to 3-5 people from the exact target user group identified in `problem-framing`, **not teammates or people who already know the product**.
- Watch them use it without guiding them — if they get stuck somewhere, that's a real problem with the product, not a problem with them.
- Ask specifically: "was your original problem solved?" — not a generic "what did you think?"
- Record the feedback, including negative feedback — including it in the Product Report shows the team has a genuine validation process, a strong point with experienced judges.

## MVP Demo video process (max 3 minutes per the competition rules)

1. Open with the problem (10-15 seconds) — restate who, what problem, no rambling.
2. Demonstrate the actual main flow, using realistic data/situations rather than an overly idealized scenario.
3. If there are known limitations/bugs, no need to hide them — a short "this version doesn't yet handle [X], planned for the next version" shows honesty, much better than being caught staging it.
4. Record on the real deployed environment if possible, not just a `localhost` screen recording — the closer to real, the more credible.

## Expected output

- A technical test results table: feature / test case / result / fixed or not
- A summary of real user feedback: number of people tested, key findings, changes made in response to feedback (if the MVP was adjusted based on feedback, this is a strength — call it out explicitly)
- A demo video of the correct length, recorded on the real deployment

This content feeds directly into the "Product Report" section — see `templates/bao-cao-san-pham-template.md`.

## Warnings for the agent

- If the user has only tried the product once and wants to record the demo right away, flag the risk clearly: judges may ask to try the product live themselves during the Q&A.
- Don't help "dress up" numbers or test results that aren't real.

## Sources

The honesty requirement for demos is quoted directly from Section X.1 of the competition rules ("staging a demo that misrepresents the truth results in a point deduction or disqualification"). The technical testing and user testing process is a synthesis of common UX research/QA practice, not based on a specific benchmark.
