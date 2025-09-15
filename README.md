# AI Guardrails

[![AI Guardrails](https://img.shields.io/badge/🛡️%20AI_Guardrails-Applied-blueviolet)](https://raw.githubusercontent.com/potsed/AI/refs/heads/main/AI.md)

This repository provides a set of **publicly available coding principles and guardrails** that can be applied to any project where AI-assisted code generation is used.

These guardrails help ensure code is **secure, stable, maintainable, and production-ready** — and that AI assistants work in alignment with the human **Subject Matter Expert (SME).**

## Principles

* Don’t reinvent the wheel.
* Keep things **DRY** (Don’t Repeat Yourself).
* Understand the full code context before generating code.
* Use the **latest stable versions** of libraries.
* Use **TDD for business logic**; don’t test third-party libraries.
* Use **official documentation** (always up front) for libraries and APIs.
* Use **SME-led development**: ask clarifying questions, don’t assume.
* Apply **security best practices** (OWASP-grade).
* Use **feature flags** to isolate new or risky features.
* Follow **QA best practices** (unit, integration, E2E, contract tests).
* Write **custom code only for business logic**.
* Use **libraries first** for infrastructure.
* Apply **software design patterns** to keep code maintainable, extendable, and stable.
* Apply **sound architectural principles**.
* Use **MCP tools** when available.
* Maintain **human-readable documentation** aligned with the project.
* If you break it, you fix it — all code must pass tests.
* Investigate failing tests (test issue vs. code issue).
* All tests must be **green without exception**.
* All code must be **production-ready** and deployable.
* All code must be **secure**.
* Databases must be **secure** and follow best practices.
* The SME must be able to **run tests locally**.
* The SME must have **clear run instructions** for the application.

## How to Use in Your Project

### 1. Add the Badge

Copy and paste this badge markdown at the top of your project’s `README.md`:

```markdown
[![AI Guardrails](https://img.shields.io/badge/🛡️%20AI_Guardrails-Applied-blueviolet)](https://raw.githubusercontent.com/potsed/AI/refs/heads/main/AI_GUARDRAILS.md)
```

### 2. Add Guardrails Instructions

Add this section to the end of your `README.md` so contributors know the rules:

```markdown
## AI

**[Always read the the linked url to AI_GUARDRAILS.md to deeply comprehend and apply the guardrails to this project](https://raw.githubusercontent.com/potsed/AI/refs/heads/main/AI_GUARDRAILS.md)** 

### Guardrail Summary

* **Libraries first**; custom code only for business logic.
* **TDD for business logic**; don’t test third-party libraries.
* **Official docs first**; always use latest stable versions.
* **Never assume SME or AI is correct** — clarify and align before coding.
* **Security, QA, documentation, supply-chain checks, legal compliance, and feature flags are mandatory.**
* **All tests must be green before completion.**
* **All code must be production-ready, secure, legally compliant, and deployable.**
* **SMEs must be able to run and test locally with clear instructions.**
```

### 3. Enforce in CI/CD (optional but recommended)

* Run **linting, type-checking, and unit tests** on every commit.
* Run **dependency and license scans** (npm audit, Composer audit, gosec, Trivy, etc).
* Require **all tests green** before merge.

### 4. Add a Pull Request Template (optional)

Create `.github/pull_request_template.md` with a checklist like:

```markdown
## PR Checklist

- [ ] I have read and applied [AI_GUARDRAILS.md](https://raw.githubusercontent.com/potsed/AI/refs/heads/main/AI_GUARDRAILS.md)  
- [ ] Code follows TDD (tests first, all green)  
- [ ] No reinventing the wheel — libraries first  
- [ ] Security reviewed (no secrets, OWASP checks)  
- [ ] Docs updated in `/docs`  
- [ ] SME can run locally with updated instructions  
```

## Why Use These Guardrails?

By applying these guardrails across projects, you ensure that:

* AI assistants generate code that is **trustworthy and maintainable**.
* Projects are **secure by default** and follow industry best practices.
* SMEs remain in control, with AI acting as a careful assistant — not a guesser.
* Teams can scale AI-assisted development without sacrificing quality.

# AI

**[Always read the the linked url to AI_GUARDRAILS.md to deeply comprehend and apply the guardrails to this project](https://raw.githubusercontent.com/potsed/AI/refs/heads/main/AI_GUARDRAILS.md)** 

### Guardrail Summary

* **Libraries first**; custom code only for business logic.
* **TDD for business logic**; don’t test third-party libraries.
* **Official docs first**; always use latest stable versions.
* **Never assume SME or AI is correct** — clarify and align before coding.
* **Security, QA, documentation, supply-chain checks, legal compliance, and feature flags are mandatory.**
* **All tests must be green before completion.**
* **All code must be production-ready, secure, legally compliant, and deployable.**
* **SMEs must be able to run and test locally with clear instructions.**
