---
name: production-readiness
description: Guides taking an MVP from a personal machine to a real deployment environment that people outside the team can access — deploy infrastructure, API costs, error handling under real usage, and testing from an outside environment. ALWAYS use when the user asks about deploying/going live, when a real ACCESS LINK is needed for the MVP Demo, or when the product is still only running on "localhost." Different from testing-and-validation (which covers whether features are CORRECT and HONESTLY represented for the demo) — this skill covers whether the product is ACCESSIBLE and won't crash. DO NOT use for a specific leaked secret/API key incident — always switch to security-basics for that. Use after ai-assisted-build, and in parallel with/after testing-and-validation.
---

# Production Readiness — From a Personal MVP to Something Real People Can Use

## Why this step often gets skipped, and the consequences

Under the pressure of 6 weeks, many teams stop at "it runs on localhost, let's just record a video." But the competition rules allow submitting a "product access link" instead of a video — a genuinely deployed product that outsiders can click into and use right away is always more convincing and more professional than a screen-recorded video. An agent applying this skill helps the user cover the remaining distance, usually only a few hours if the code is already clean from the `ai-assisted-build` step.

## Minimum checklist before deploying (mandatory, not "if there's time")

### 1. Never leave an API key/secret exposed in code
- Check: no API key, password, or connection string is hardcoded directly in any file already committed to Git.
- Use environment variables (`.env` file, DO NOT commit this file — add it to `.gitignore`).
- If a key was accidentally committed to a public Git repo before: treat that key as already leaked, revoke it and generate a new one immediately, not just delete the line of code.

### 2. Cap AI API costs to avoid a surprise bill
- Set a rate limit / usage cap on the application side (limiting requests per user/minute) — don't rely solely on the provider's default limits.
- For pay-per-use APIs, set a budget alert or use a free tier with a hard limit where possible during the competition period.

### 3. Handle errors so it doesn't "crash to a blank screen"
- Every call to an AI API/backend must have try-catch and show a user-friendly error message, instead of a blank screen or a confusing technical error.
- Have a clear loading state while waiting for an AI response (especially important since AI can take several seconds).

### 4. Choose a deployment platform that fits the stack, no need for complexity
No need for enterprise-grade infrastructure for a competition MVP — a free/cheap deployment platform set up in a few minutes is enough. See `resources/cong-cu-ai-theo-giai-doan.md` to compare common options (Vercel, Netlify, Railway, Render, Fly.io, Supabase...) by stack type (static frontend, full-stack, separate backend, needs a database...).

### 5. Test the product from a different device/network, not the machine used to build it
Have someone outside the team open the link and try it — this is the most reliable test of "is this actually production-ready." Many bugs only show up once you leave the builder's familiar environment (missing environment variables, CORS, unconfigured domain).

### 6. Have a stable domain/link to include in the submission
The link must still be working through the Final round night — double-check the limits of any free-tier plan (some platforms auto-sleep an app after inactivity and need to be manually restarted/upgraded).

## Not needed (avoid over-engineering a competition MVP)

- No need for Kubernetes, microservices, or complex auto-scaling infrastructure.
- No need for a full CI/CD pipeline — manual or simple automatic commit-and-deploy is enough.
- No need for 100% test coverage — prioritize testing the main flows listed in `testing-and-validation`.

## Expected output

- A real, working product access link, stable, with no leaked secrets
- A short note on known limitations of this deployment (include in the Product Report if applicable)

## Related

- Before this step: `ai-assisted-build`, `testing-and-validation`, `security-basics`
- See also: `guides/04-ship/` for a deeper explanation of concepts (environment variables, CORS, rate limiting...) if these technical terms are unfamiliar.

## Sources

The security checklist (items 1-2) is backed by real quantitative evidence: a Veracode survey of over 100 AI models found 45% of AI-generated code contains OWASP Top 10 vulnerabilities; an Escape.tech scan of 5,600 publicly deployed vibe-coded applications found 400 directly exposed secrets. Full details and other sources: `resources/nguon-tham-khao.md`, with more depth in `skills/security-basics/`.
