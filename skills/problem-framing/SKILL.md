---
name: problem-framing
description: Guides identifying and framing a real-world problem before jumping to a technology or AI solution. ALWAYS use IMMEDIATELY when the user first mentions a product/AI idea in the conversation — even if they say they want to "start building/coding right away" or "just prompt it and see if it runs" — because every idea must pass through this step before ai-solution-design or ai-assisted-build. Also use when the user says "I want to build an app/tool for...", when writing the "Problem Description" section of a competition submission, or when the idea sounds technology-first ("use AI to...") rather than problem-first. DO NOT use if the problem has already been clearly framed earlier in the conversation (a specific user group + an observable, measurable problem already established) — go straight to ai-solution-design instead.
---

# Problem Framing — Identify the Problem Before Touching AI

## Why this skill exists

The most common mistake in building AI products is starting from "what can AI do?" instead of "who has what problem?" The result is products that are technologically "cool" but that nobody actually needs. An agent applying this skill must **actively stop** the user if they jump straight to a solution without first answering the questions below — even when they seem to be in a hurry.

## Signs this skill should apply right now

- The user opens with "I want to use AI to..." instead of "user X has problem Y"
- The idea is described in terms of technology ("chatbot", "an app using an LLM") but cannot be described in a single sentence about a specific group's pain point
- There's no clear answer to "if this product didn't exist, what would the user be doing instead?"

## 5-step process

### Step 1 — Identify a specific user, not "everyone"
Reject answers like "students in general" or "everyone needs this." Push for narrowing: age range, circumstances, how often they hit this problem, a few concrete "personas." If the user doesn't know, suggest they go ask 3–5 real people from that group before moving on — this step cannot be skipped.

### Step 2 — Describe the problem through observable behavior, not a solution
Good problem statement: "First-year students spend an average of 2 hours/week looking for an empty study room because room schedules aren't public." (observable, measurable)
Bad problem statement: "Students need an AI-powered room-finder app." (already jumped to a solution)

If the user describes the problem as a solution, ask back: "If [that solution] didn't exist, what would actually be frustrating them?"

### Step 3 — Check severity and frequency
A problem worth solving must answer: how often does it happen, how many people does it affect, what is the user currently paying (time/money/opportunity) to cope with it. "Occasionally a bit annoying" is a very different problem from "costs 2 hours a week, affects thousands of students."

### Step 4 — Identify the current solution (including "manual" workarounds)
There is always some way the user currently copes with the problem — googling, asking friends, using Excel, just putting up with it. Understanding the current solution reveals exactly where the real gap is.

### Step 5 — Only after the 4 steps above, ask: what role does AI play here?
Not every problem needs AI. If the problem can be solved with a Google Form or a spreadsheet, say so plainly — move to the `ai-solution-design` skill only once a gap has been identified where AI genuinely creates significant value (not AI for its own sake).

## Expected output

A 3-5 sentence problem description, structured as:

> **[Specific user group]** experiences **[observable problem]** because of **[root cause]**. This happens **[frequency]** and costs them **[the price they pay]**. They currently **[existing manual workaround]**, but it doesn't solve the problem because of **[specific gap]**.

This paragraph is the raw material for the "Problem Description" section of the Preliminary Round submission — see `templates/ho-so-so-loai-template.md`.

## Common mistakes to flag for the user

- **Problem too broad**: "students struggle with studying" — no team can solve this in 6 weeks. Push for a narrower, specific situation.
- **A problem invented to justify a technology already wanted**: if no one has confirmed this problem is real, mark it explicitly as an assumption to validate later — don't write it as an already-verified fact.
- **Confusing "missing feature" with "problem"**: "app X doesn't have feature Y" describes a competitor's solution, not the user's problem.

## Sources

The 5-step process is a synthesis of widely accepted practices in Design Thinking and product development (problem discovery) — it is not based on a specific quantitative study; this is a broadly accepted methodology, not a benchmark result. See `resources/nguon-tham-khao.md` to distinguish content backed by real citations from content that is a synthesis of common practice throughout this repo.
