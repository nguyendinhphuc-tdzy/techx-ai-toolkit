---
name: git-basics
description: Guides using Git (version control) at the basic level needed when building with an AI coding assistant — commit, branch, rolling back to an earlier version when AI breaks the code. ALWAYS use when the user hasn't set up Git for the project yet, when AI just made an edit that broke the code further and a rollback is needed, or when multiple team members are working on the same codebase. DO NOT use to evaluate the QUALITY of code before merging a branch (that's code-review-basics) — this skill only covers Git mechanics, not judging whether code is correct.
---

# Git Basics — A Safety Net for Building with AI

## Why Git matters more than usual when vibe coding

When AI writes code for you, the pace of change is much faster than writing it by hand yourself — meaning when something goes wrong, the damage accumulates faster too. Without Git, "AI's fix broke things further" usually means rebuilding from scratch because there's no memory of which version still worked.

## 5 commands are enough for a competition MVP

```bash
git init                          # initialize Git for the project (do this once, first)
git add .                         # stage changes to be saved
git commit -m "short description" # save a "checkpoint" you can return to later
git log --oneline                 # view the history of saved checkpoints
git checkout -- .                 # discard all uncommitted changes, revert to the last checkpoint
```

## Practical rule: commit after every working unit

No need for "pretty" enterprise-style commits. Minimum rule: **the moment a small feature/unit works correctly, commit it right away**, with a clear description ("add email validation to the signup form", not "update"). This is exactly the safe rollback point you need when AI breaks the code in the next step.

## When AI breaks the code and you need to roll back

1. If the changes are **not yet committed**: run `git checkout -- .` to discard all uncommitted changes and return to the last commit.
2. If the changes **were already committed** but you want to go back further: run `git log --oneline` to see the list, then `git checkout <commit-hash>` to look at that version (ask for guidance before going further, since fully reverting the main branch needs more care).

## Basic teamwork (when multiple people are coding together)

- Each person works on their own branch (`git checkout -b your-branch-name`) instead of everyone editing the main branch directly — this reduces the risk of overwriting each other's work.
- Before merging code into the main branch, read through the changes (`git diff`) to make sure you understand exactly what's being added.

## Never commit the following

- `.env` files containing API keys/passwords (see `skills/security-basics/`)
- The `node_modules/` folder or other auto-installed dependency folders — use a `.gitignore` file to exclude them from day one

## Sources

This content is common foundational Git knowledge, not based on a specific quantitative study. Official documentation: git-scm.com/doc
