---
name: security-basics
description: Guides minimum security practices when building a product with an AI coding assistant — preventing leaked API keys/secrets, preventing common vulnerabilities in AI-generated code. ALWAYS use when the user is about to commit code to Git, about to deploy, integrating an API key/credentials, reviewing AI-generated code involving user data/payments/authentication, or when a secret/API key has leaked or is suspected of having leaked (including already committed). This is the ONLY skill that handles a leaked-secret incident, whether at the coding stage or the deploy stage — production-readiness only points here, it does not duplicate the remediation process.
---

# Security Basics — Minimum Safety When Building with AI

## This is not a theoretical risk — there's real data

A Veracode survey testing over 100 AI models on 80 coding tasks found that 45% of AI-generated code contains vulnerabilities from the OWASP Top 10 (the most common and dangerous category of web security flaws). A scan by Escape.tech across 5,600 publicly deployed "vibe-coded" apps found 2,000 serious vulnerabilities and 400 secrets (API keys, passwords) directly exposed. This is why this skill exists — not to "slow down" build speed, but because speed means nothing if the product leaks user data. (Full sources: `resources/nguon-tham-khao.md`)

## Mandatory checklist, apply before committing or deploying

### 1. Never hardcode a secret in code
- API keys, passwords, connection strings always live in environment variables (`.env`), **never** in a file that will be committed.
- Add `.env` to `.gitignore` **from the very first commit**, not after you've already committed it once.
- If a secret was accidentally committed to Git (even a private repo): treat that secret as already leaked, revoke it and generate a new one immediately — deleting the line of code is not enough, because the secret still exists in Git history.

### 2. Review AI-generated code related to authentication/authorization
This is the most common category of bug in AI-generated code according to recent security surveys. For every API endpoint, ask: "Who is allowed to call this? Did AI actually add a permission check, or does it default to allowing everyone?"

### 3. Don't install a library AI suggests without checking it
AI sometimes suggests package names that don't exist or gets the package name wrong (which can be exploited by malicious lookalike packages). Before installing, verify the package genuinely exists on the official npm/PyPI registry, has a reasonable download count, and the name exactly matches what you intended.

### 4. Be careful with sensitive user data
If the product collects email addresses, phone numbers, or any personal data: don't log this data to a shared console/log file, don't store it in readable form if it's a password (must be hashed), and restrict who can access the database.

### 5. Don't paste sensitive data into an AI prompt
Don't paste real API keys, real passwords, or real user data into an AI chat window to "help debug" — use mock data instead.

## Quick checklist before considering a data-related feature "done"

- [ ] No secret is hardcoded in committed code
- [ ] Endpoints have access checks, not public by default
- [ ] Newly installed libraries have been verified to genuinely exist under the correct name
- [ ] No sensitive data is logged somewhere widely accessible
- [ ] Tried accessing with a different account/permission level to check nothing is exposed that shouldn't be

## Warnings for the agent

If the user is about to commit or deploy and hasn't mentioned environment variables at all, proactively stop and ask first — this is a class of bug that's hard to spot by eye when the demo runs normally; it only surfaces when someone deliberately exploits it.

## Sources

See `resources/nguon-tham-khao.md` — the Veracode, Escape.tech, GitGuardian, and Georgia Tech Vibe Security Radar figures are all sourced there in detail.
