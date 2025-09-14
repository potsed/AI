# AI\_GUARDRAILS.md

**General AI Guardrails for Code Generation & Collaboration**

These guardrails define how AI assistants (e.g., Copilot, ChatGPT, Codex) must behave when **proposing or generating code**. The goal is to ensure all output is **secure, stable, legally compliant, maintainable, SME-aligned, and production-ready**.

## 1) Principles

1. **Don’t reinvent the wheel** — prefer existing solutions.
2. **Keep code DRY** — avoid duplication.
3. **Understand full code context** before generating new code.
4. **Use latest stable versions of libraries** and update for breaking changes.
5. **Use TDD for business logic** — tests come first, code follows.
6. **Use official documentation** (always up front) for libraries and APIs.
7. **SME-led development** — but do not assume either SME or AI is correct. Ask clarifying questions, make suggestions, and confirm agreement before proceeding.
8. **Follow security best practices** (OWASP-grade).
9. **Use feature flags** to isolate new or risky features.
10. **Follow QA best practices** (unit, integration, E2E, contract tests).
11. **Custom code only for business logic** — libraries first for infrastructure.
12. **Apply proven software design patterns** to keep code maintainable, extendable, stable.
13. **Use sound architectural principles** — keep systems coherent and robust.
14. **Use MCP tools** (Model Context Protocol) when available for integrations.
15. **Maintain human-readable documentation** aligned with project and changes.
16. **If you break it, you fix it** — all code must pass tests.
17. **Investigate failing tests carefully** — distinguish test issues vs. code issues.
18. **All tests must be green before completion** — no exceptions.
19. **All code must be production-ready** — deployable and maintainable.
20. **All code must be secure** — data, APIs, and infra included.
21. **Databases must follow secure best practices** — migrations, access, encryption.
22. **The SME must be able to run tests locally**.
23. **The SME must have clear instructions** for running the application.
24. **All code must follow legal and regulatory requirements** — including licensing, data protection, accessibility, financial compliance, and any applicable local laws.

## 2) Guardrails for AI

### ✅ Libraries First

* Use standard/runtime libraries first.
* Use well-maintained, widely adopted OSS second.
* Only write custom code for domain-specific business logic.

### 🛑 Do Not Reinvent

Avoid writing your own:

* HTTP servers, routers, OAuth/OIDC flows
* Cryptography (HMAC, JWT, AES, etc.)
* Database clients or query engines
* Queueing or scheduling systems
* Session management
* Logging/config/retries

### 🧠 Business Logic Only

Custom code = business workflows, domain events, templates, glue logic, sandboxing.

## 3) TDD Guardrails

* Write tests **before** code.
* Test **business logic only** (not third-party libraries).
* Keep tests deterministic (mock/stub external APIs).
* One Gherkin feature per file; all features **feature-flagged**.
* CI/CD must run all tests; failing tests block merges/deploys.

## 4) Workflow for AI

1. **Read and understand requirements carefully.**

   * Do **not assume** the SME is automatically correct.
   * Do **not assume** the AI is automatically correct.
   * **Ask clarifying questions** and **make suggestions** until there is clear agreement on how to proceed.

2. **Check official docs** of chosen libraries/APIs.

3. **Write a failing test first** (TDD).

4. **Write minimal code** to make the test pass.

5. **Refactor** for clarity, maintainability, and performance.

6. **Update documentation** to reflect changes.

7. **Run all tests** — everything must be green before completion.

## 5) Documentation

* All changes must be reflected in `/docs`.
* Include: setup, run instructions, routes, flags, commands, feature flags, architecture.
* Provide clear instructions so the SME can run tests and the app locally.

## 6) Supply-Chain & Dependencies

* Commit lockfiles for reproducible builds.
* Generate an SBOM (e.g., CycloneDX) in CI.
* Run dependency scanning in CI; fail on high/critical CVEs unless explicitly waived.
* Approve only permissive licenses; block copyleft/unknown licenses.
* Update dependencies regularly; document and test all breaking changes.

## 7) Secrets & Configuration

* No secrets in code or committed `.env` files.
* Use a secure secrets manager; enforce rotation, least privilege, and encryption.
* Follow 12-factor app config principles.
* Separate config per environment; no environment-specific logic in code.

## 8) Code Quality & Process

* Use formatters and linters consistently.
* CI must fail on lint, type, or static analysis errors.
* Follow Conventional Commits; PRs must describe risks, docs updates, and tests added.
* Require peer review for merge.
* APIs must be described with schemas; contract tests in CI.

## 9) Observability & Error Policy

* Use structured logs with correlation IDs; never log secrets or PII.
* Expose metrics for latency, error, and throughput.
* Provide runbooks in `/docs/runbooks` for deploy, rollback, and incident response.
* Errors must be categorized; apply retries, backoff, and dead-letter queues where needed.

## 10) Data & Privacy

* Define data retention; implement deletion workflows.
* Comply with privacy regulations (GDPR, CCPA, HIPAA, etc. as applicable).
* Use RBAC/ABAC for access control; apply least privilege.
* Maintain audit logs for sensitive operations.

## 11) Performance & Resilience

* Define latency and error budgets per endpoint.
* Add lightweight performance checks in CI.
* Apply rate limiting; protect against abuse/bots.
* Use timeouts, circuit breakers, retries, and idempotency keys.
* Consider resilience/chaos testing where feasible.

## 12) Release & Migration Safety

* Use feature flags and kill switches for new features.
* Prefer safe deployment strategies (blue/green, canary).
* Database migrations must be backward compatible.
* Always have roll-forward strategies; avoid destructive down migrations in production.

## 13) Frontend / UX

* Ensure accessibility (WCAG compliance).
* Keep components small and testable.
* Avoid CSS bloat; prefer utility classes.
* Support i18n/l10n where applicable.

## 14) Legal & Regulatory Compliance

* Respect **open-source licenses**; only use libraries with compatible licensing.
* Ensure compliance with **data protection laws** (GDPR, CCPA, HIPAA, etc.).
* Follow **accessibility standards** (WCAG, ADA).
* Meet **industry-specific regulations** where applicable (e.g., PCI-DSS for payments, SOC 2 for enterprise).
* Ensure **logging and monitoring** meet audit and compliance requirements.
* Document compliance considerations in `/docs/compliance`.

## 15) Examples

### Example 1 — OAuth

❌ Wrong: Roll a raw OAuth handler.
✅ Correct: Use framework routes + official OAuth guidance.

### Example 2 — Cryptography

❌ Wrong: Manual base64 HMAC.
✅ Correct: Use official crypto APIs/libraries.

### Example 3 — Queueing

❌ Wrong: Custom Redis queue using push/pop operations.
✅ Correct: Use a proven, well-maintained job queue library.

### Example 4 — Business Logic

✅ Correct: Custom code to normalize webhook payloads into domain events and render tokenized templates.

### Example 5 — Session Management

❌ Wrong: DIY sessions/cookies or ad-hoc tokens.
✅ Correct: Use an established session library or framework manager; configure cookies securely; apply expiry, rotation, and avoid storing sensitive data directly.

## 16) Compliance Checklist (Before Merge)

* [ ] Code follows **all principles**.
* [ ] TDD followed; **tests added, passing, and green**.
* [ ] Libraries at **latest stable versions**; breaking changes handled.
* [ ] Official docs consulted and referenced.
* [ ] Minimal, effective code; DRY, SOLID, low complexity.
* [ ] Security considerations addressed.
* [ ] Supply-chain scanning passes (no high/critical vulns).
* [ ] `/docs` updated with commands, routes, instructions, runbooks, compliance notes.
* [ ] SME has clear local run/test instructions.
* [ ] All CI checks green.
* [ ] Legal and regulatory requirements reviewed and satisfied.

## 17) Language-Specific Reference Headers

**TypeScript / JavaScript**

```ts
/**
 * AI Guardrails: See AI_GUARDRAILS.md.
 * Libraries first; custom code only for business logic.
 * Use TDD, official docs, latest versions, and SME-led development.
 * Do not assume SME or AI is correct — clarify first.
 * Security, QA, legal, supply-chain, and documentation are mandatory.
 */
```

**Go**

```go
// AI Guardrails: See AI_GUARDRAILS.md.
// Libraries first; custom code only for business logic.
// Use TDD, official docs, latest versions, and SME-led development.
// Do not assume SME or AI is correct — clarify first.
// Security, QA, legal, supply-chain, and documentation are mandatory.
```

**PHP / Laravel**

```php
<?php
/**
 * AI Guardrails: See AI_GUARDRAILS.md.
 * Prefer built-ins and maintained packages; use Laravel first-party features.
 * Use TDD, official docs, latest versions, and SME-led development.
 * Do not assume SME or AI is correct — clarify first.
 * Security, QA, legal, supply-chain, and documentation are mandatory.
 */
```

**Docs / Markdown**

```md
> ⚠️ AI Guardrails: See AI_GUARDRAILS.md.  
> Libraries first; custom code only for business logic.  
> Use TDD, official docs, SME-led development.  
> Do not assume SME or AI is correct — clarify first.  
> Security, QA, legal, supply-chain, and documentation are mandatory.
```

## 18) Summary

* **Libraries first; custom code only for business logic.**
* **TDD for business logic; don’t test third-party libraries.**
* **Official docs first; always use latest stable versions.**
* **Never assume SME or AI is correct — clarify and align before coding.**
* **Security, QA, documentation, supply-chain checks, legal compliance, and feature flags are mandatory.**
* **All tests must be green before completion.**
* **All code must be production-ready, secure, legally compliant, and deployable.**
* **SMEs must be able to run and test locally with clear instructions.**
