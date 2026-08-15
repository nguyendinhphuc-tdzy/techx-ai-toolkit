---
name: benchmark-literacy
description: Guides correctly reading and interpreting benchmark/leaderboard tables when comparing specific AI models or tools, avoiding being misled by marketing figures. ALWAYS use when the user is deciding between AI models/tools based on benchmark scores, when preparing to cite benchmark figures in a submission or in front of the judges, or when encountering a claim like "model X is smarter than model Y" that needs verifying. DO NOT use to decide what ROLE AI should play in the product (that's ai-solution-design) — this skill only compares specific model/tool options once you already know what you need AI to do.
---

# Benchmark Literacy — Read AI Leaderboards Without Being Misled

## Core principle

A benchmark measures the **capability of the underlying model**, not the effectiveness of the skill/prompt/process you're using. A model at the top of an aggregate leaderboard isn't automatically the right choice for your specific problem — always look for the benchmark closest to the actual task at hand.

## Three questions to answer before trusting a benchmark number

### 1. Who published this number?
Figures self-reported by the company that made the model ("vendor-reported") tend to be cherry-picked under the most favorable conditions for them. Figures from an independent third-party evaluation (e.g., a benchmark re-run using a standardized harness common to every model) are more trustworthy for a fair comparison.

### 2. Is this benchmark at risk of training data contamination?
The older and longer a benchmark has been public, the more likely a model has "seen" the questions and answers during training. Prefer benchmarks with anti-contamination mechanisms (continuously refreshed questions) or "hard/new" versions of a familiar benchmark.

### 3. Does this benchmark actually resemble the task you need to do?
A model that's great at competitive programming isn't necessarily great at "fixing a feature in a messy existing codebase" — these are two different skills. See `resources/benchmark-va-cach-doc.md` to know which benchmark measures which kind of task.

## Process for choosing a model/tool for a specific feature

1. Pin down the exact task (generating Vietnamese content? image processing? fixing code in an existing codebase? real-time response speed?).
2. Find the benchmark closest to that task, don't use a generic aggregate score.
3. Cross-check at least 2 different sources if available (e.g., the vendor-reported score and an independently re-measured score) — if there's a big gap, trust the independent source more.
4. **Always test it yourself on your real problem** before deciding — this is a step no public benchmark can replace.

## When presenting to the judges

If comparing tools/models in a submission or presentation, cite a specific benchmark source ("according to benchmark X, this model scores Y% on task Z") instead of a generic claim ("this AI is smarter"). This shows the choice is evidence-based — exactly the spirit of "solution-building thinking with AI" the competition is looking for.

## Warnings for the agent

If the user cites a benchmark number that sounds impressive ("model X scores 99% on benchmark Y") without a clear source, encourage double-checking: who published it, what does this benchmark actually measure, is there a newer/harder version that shows a different picture.

## Sources

See `resources/benchmark-va-cach-doc.md` for a list of specific benchmarks (SWE-bench, LMArena, Artificial Analysis, Aider, LiveCodeBench) and a detailed explanation of the three traps to watch for when reading a benchmark.
