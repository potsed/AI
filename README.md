# AI Guardrails

[![AI Guardrails](https://img.shields.io/badge/🛡️%20AI_Guardrails-Applied-green)](https://github.com/potsed/AI/blob/main/AI_GUARDRAILS.md)

I have created a set of publicly available good coding principles and guardrails that can be used as a set of default guardrails for AI assistants to follow and apply.

The principles are:

- Don't reinvent the wheel.
- Keep things DRY
- Read the full code context before generating code.
- Use the latest stable versions of libraries.
- Use TDD for business logic.
- Use official documentation for libraries and APIs.
- Use SME-led development.
- Use security best practices.
- Use feature flags for non-negotiable features so that they can be isolated.
- Use QA best practices.
- Use custom code only for business logic.
- Use libraries first.
- Use official documentation up front.

## Usage

As a centralised public library, this repository is intended to be used as a source of standardised guardrails for AI-generated code.

Usage is simple - copy and paste the following badge into the top of your README.md file:

```markdown
[![AI Guardrails](https://img.shields.io/badge/🛡️%20AI_Guardrails-Enforced-blueviolet)](https://raw.githubusercontent.com/potsed/AI/refs/heads/main/AI_GUARDRAILS.md)
```

Then add the following markdown to the end of your README.md file:

```markdown
## AI GUARDRAILS INSTRUCTIONS

**[Always read the the linked url to AI_GUARDRAILS.md to deeply comprehend and apply the guardrails to this project](https://raw.githubusercontent.com/potsed/AI/refs/heads/main/AI_GUARDRAILS.md)** 

### Guardrail Summary

* **Libraries First**
* **Custom Code = Business Logic Only**
* **TDD for business logic; don’t test libraries**
* **Official docs up front; latest versions**
* **SME-led: clarify, then implement**
* **Security, docs, QA, feature flags: non-negotiable**
```

## AI GUARDRAILS INSTRUCTIONS

**[Always read the the linked url to AI_GUARDRAILS.md to deeply comprehend and apply the guardrails to this project](https://raw.githubusercontent.com/potsed/AI/refs/heads/main/AI_GUARDRAILS.md)** 

### Guardrail Summary

* **Libraries First**
* **Custom Code = Business Logic Only**
* **TDD for business logic; don’t test libraries**
* **Official docs up front; latest versions**
* **SME-led: clarify, then implement**
* **Security, docs, QA, feature flags: non-negotiable**
