---
name: ai-prompting
description: Guides writing clear prompts with context and acceptance criteria when asking AI to write code or perform a NEW task. ALWAYS use when the user is about to ask AI to do something for the first time, or when the user directly asks "how do I prompt this correctly?" Use alongside ai-assisted-build. DO NOT use when the issue is a specific bug/error that has already occurred — even when AI has tried fixing it multiple times without success and the output "keeps not matching intent" — that case always goes to debugging-basics instead, because the root cause is a lack of precise error description, not a lack of general prompting technique.
---

# AI Prompting — Write Prompts That Get You What You Actually Need

## Core principle

AI cannot read your mind — it only reacts to what you actually write and the context it actually has. Most "wrong" output isn't because the AI is bad, but because the prompt lacked context or was ambiguous enough to have several reasonable interpretations.

## Four components of a good prompt

1. **A specific goal** — not "build a login feature" but "a login form with email + password, validating the email format before submitting the request"
2. **Context** — the relevant existing code/files, current project structure, libraries in use. AI doesn't automatically "see" the whole project unless you provide it or it has read access.
3. **Constraints** — code style, libraries allowed/not allowed, performance limits if any.
4. **Acceptance criteria** — clearly describe when the output counts as correct ("when the email format is invalid, show the error 'Invalid email' right below the input field").

## Process when AI's output doesn't match your intent

Don't repeat the exact same prompt with more exclamation marks. Instead:

1. Pin down exactly what's wrong — not "it doesn't work" but "function X returns Y instead of Z when the input is W."
2. Check whether AI actually has enough context — can it see the relevant code, or is it guessing based on assumptions?
3. Rewrite the prompt with clearer context + acceptance criteria, not just repeating the request.
4. If it's still wrong after 2-3 tries, stop and read/think it through yourself before trying again — a sign that the agent, or you, is missing some foundational piece of information.

## Good vs. bad prompt — example

**Bad:** "build me a product listing page"

**Good:** "Create a component that displays a product list in a 3-column grid on desktop, 1 column on mobile. Data comes from the `/api/products` endpoint, returning an array of `{id, name, price, image}`. Show a skeleton loading state while fetching; on API error, show 'Could not load products, please try again.' Use Tailwind, following the existing `ProductCard` component in `src/components/`."

## Warnings for the agent

- If the user keeps copy-pasting the same prompt after it fails, proactively ask: "Can you describe exactly which part is wrong?" instead of retrying the exact same thing.
- Discourage "just do everything for me" style prompts for a large task — steer the user to break it down using `skills/ai-assisted-build/`.

## Sources

This skill's content is a synthesis of common prompt engineering practice (context, acceptance criteria, breaking tasks down) — not based on a specific quantitative study. For further depth, see Anthropic's official documentation on prompt engineering: docs.claude.com/en/docs/build-with-claude/prompt-engineering/overview
