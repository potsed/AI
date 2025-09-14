Absolutely—here’s the **project-agnostic `AI_GUARDRAILS.md`** updated to strongly emphasize the **ATOMIC principle** (small, single-responsibility, testable modules) and to **enforce atomicity at every iteration** with clear thresholds and checklist gates. It remains framework-neutral; any language-specific mentions appear only in the optional header comments at the end.

# AI\_GUARDRAILS.md

**General AI Guardrails for Code Generation & Collaboration**

These guardrails define how AI assistants (e.g., Copilot, ChatGPT, Codex) must behave when **proposing or generating code**. The goal is to ensure all output is **secure, stable, legally compliant, maintainable, SME-aligned, atomic, and production-ready**.

## 1) Principles

1. **Don’t reinvent the wheel** — prefer existing solutions.
2. **Keep code DRY** — avoid duplication.
3. **ATOMIC code** — keep files and functions **small, focused, and testable**:

   * One clear responsibility per file/module.
   * Prefer **≤100 lines per file** (soft target); **refactor before adding** if a file exceeds 100 lines.
   * Keep functions short and cohesive; avoid deep nesting and high complexity.
4. **Understand full code context** before generating or editing code.
5. **Use latest stable versions of libraries** and handle breaking changes.
6. **Use TDD for business logic** — write the failing test first.
7. **Use official documentation** (always up front) for libraries and APIs.
8. **SME-led development** — never assume SME or AI is correct; **clarify and agree** before coding.
9. **Follow security best practices** (OWASP-grade).
10. **Use feature flags** to isolate new/risky features and enable kill switches.
11. **Follow QA best practices** (unit, integration, E2E, contract tests).
12. **Custom code only for business logic** — **libraries first** for infrastructure.
13. **Apply proven software design patterns** to keep code maintainable, extendable, and stable.
14. **Use sound architectural principles** and clear module boundaries.
15. **Use MCP tools** (Model Context Protocol) when available.
16. **Maintain human-readable documentation** aligned with changes.
17. **If you break it, you fix it** — all code must pass tests.
18. **Investigate failing tests** — distinguish test issues vs. code issues (esp. third-party libs).
19. **All tests must be green before completion** — no exceptions.
20. **All code must be production-ready and secure** — data, APIs, infra, and deployments.
21. **Databases must follow secure best practices** — migrations, access, encryption, backups.
22. **The SME must be able to run tests locally**.
23. **The SME must have clear instructions** for running the application.
24. **Follow legal & regulatory requirements** — licensing, privacy, accessibility, industry regs.

## 2) Guardrails for AI

### ✅ Libraries First

* Use standard/runtime libraries first; well-maintained, widely adopted OSS second.
* Write **custom code only for domain-specific business logic** and minimal glue.

### 🛑 Do Not Reinvent

Do **not** hand-roll: HTTP servers/routers, OAuth/OIDC, cryptography, DB clients, queues/schedulers, session management, logging/config/retries.

### 🧠 Business Logic Only

Custom code = domain workflows, event normalization, templating, sandboxing, and minimal adapters.

## 3) ATOMIC Code & File Hygiene (Enforced)

* **Small files, clear purpose**

  * **Target ≤100 lines per file**.
  * If a file is **>100 lines**, **refactor first** before adding new code.
  * Avoid “god files” accumulating unrelated responsibilities.
* **Small functions**

  * Prefer short, flat functions (low nesting).
  * Keep cyclomatic complexity **low**; split when branching grows.
* **Single responsibility**

  * One module = one reason to change.
  * Route definition, validation, business logic, and IO concerns live in **separate** small modules.
* **Iteration rule (“leave it cleaner”)**

  * Every PR/session must **reduce** or **maintain** atomicity; never worsen it.
  * If you touch a non-atomic file, **improve** its structure as part of the change.
* **Gates (language-agnostic)**

  * CI should **fail** when:

    * File length exceeds agreed caps (project may set hard caps, e.g., 200 lines).
    * Function length/complexity exceed thresholds.
  * PRs must show **extractions** rather than appending to oversized files.

## 4) TDD Guardrails

* Write tests **before** code for business logic.
* Do **not** test third-party libraries; mock/stub their boundaries.
* Keep tests deterministic; no external side-effects.
* One **Gherkin** feature per file; **feature-flag** new behavior.
* CI runs tests on every commit; failures block merges.

## 5) Workflow for AI

1. **Read and understand requirements carefully.**

   * Do **not** assume SME or AI is automatically correct.
   * **Ask clarifying questions**; propose options; align on the plan.
2. **Consult official docs** for selected libraries/APIs (cite version).
3. **Write a failing test** (TDD).
4. **Write minimal code** to pass; keep changes **atomic** and **scoped**.
5. **Refactor** (improve atomicity, DRY, patterns).
6. **Update documentation** aligned with changes.
7. **Run all tests**; ensure **everything is green**.

## 6) Documentation

* Maintain `/docs` with setup, run, routes, flags, commands, feature flags, architecture.
* Provide clear **local run/test** instructions for the SME.

## 7) Supply-Chain & Dependencies

* Commit lockfiles; generate an SBOM in CI.
* Run dependency scanning; fail on high/critical CVEs unless explicitly waived.
* Approve only permissive licenses; document license review.
* Update dependencies routinely; plan & test breaking changes.

## 8) Secrets & Configuration

* Never commit secrets. Use a secure secrets manager; rotate, least privilege, encrypt.
* 12-factor configs; env-separated; no env-specific logic in code.

## 9) Code Quality & Process

* Enforce formatting, linting, typing/static analysis in CI.
* Conventional Commits; PRs include risks, tests, docs links, and **atomicity notes**.
* Peer review required.
* APIs documented with schemas; contract tests in CI.

## 10) Observability & Error Policy

* Structured logs with correlation; never log secrets/PII.
* Expose basic service health/metrics.
* Runbooks in `/docs/runbooks` for deploy, rollback, incident response.
* Error taxonomy; retries/backoff; dead-lettering where appropriate.

## 11) Data & Privacy

* Define data retention; implement deletion workflows.
* Comply with privacy regulations as applicable.
* Use least-privilege access control; audit sensitive operations.

## 12) Performance & Resilience

* Define latency/error budgets; add lightweight perf checks.
* Rate limiting and abuse protection.
* Timeouts, circuit breakers, retries, idempotency.
* Consider resilience tests where feasible.

## 13) Release & Migration Safety

* Feature flags and kill switches for new features.
* Safe deployments (e.g., staged/canary patterns).
* Backward-compatible migrations; roll-forward strategy.

## 14) Frontend / UX

* Accessibility (WCAG).
* Small, testable components; avoid CSS bloat.
* i18n/l10n readiness where relevant.

## 15) Legal & Regulatory Compliance

* Respect OSS licenses; document review outcomes.
* Meet privacy, accessibility, and any industry regs applicable.
* Ensure auditability as required; document compliance in `/docs/compliance`.

## 16) Examples (Framework-Agnostic)

### Example 1 — OAuth

❌ Wrong: Hand-rolled OAuth handler.
✅ Correct: Use framework routing + official OAuth guidance.

### Example 2 — Cryptography

❌ Wrong: Manual base64 HMAC.
✅ Correct: Use official crypto APIs/libraries.

### Example 3 — Queueing

❌ Wrong: DIY queue with push/pop primitives.
✅ Correct: Use a proven, well-maintained job/queue library.

### Example 4 — Business Logic

✅ Correct: Custom code to normalize webhook payloads into domain events and render tokenized templates.

### Example 5 — Session Management

❌ Wrong: Ad-hoc tokens/cookies.
✅ Correct: Use an established session mechanism; secure cookies; expiry/rotation; avoid storing sensitive data directly.

## 17) Compliance Checklist (Before Merge)

* [ ] **Atomicity upheld** (files/functions small; extractions over accretion).
* [ ] Code follows **all principles**.
* [ ] **TDD** followed; tests added and **all green**.
* [ ] Latest stable libraries; breaking changes addressed.
* [ ] Official docs consulted and referenced.
* [ ] Minimal, effective changes; DRY, low complexity; patterns applied.
* [ ] Security reviewed; no secrets/PII leakage.
* [ ] Supply-chain scans pass; licenses reviewed.
* [ ] `/docs` updated (commands, routes, instructions, runbooks, compliance).
* [ ] SME can run locally with clear instructions.
* [ ] Legal/regulatory requirements satisfied.

## 18) Language-Specific Reference Headers (optional)

**TypeScript / JavaScript**

```ts
/**
 * AI Guardrails: See AI_GUARDRAILS.md.
 * Libraries first; custom code only for business logic.
 * Keep code ATOMIC (small files/functions); refactor before adding to large files.
 * Use TDD, official docs, latest versions, and SME-led development.
 * Do not assume SME or AI is correct — clarify first.
 * Security, QA, legal, supply-chain, and documentation are mandatory.
 */
```

**Go**

```go
// AI Guardrails: See AI_GUARDRAILS.md.
// Libraries first; custom code only for business logic.
// Keep code ATOMIC (small files/functions); refactor before adding to large files.
// Use TDD, official docs, latest versions, and SME-led development.
// Do not assume SME or AI is correct — clarify first.
// Security, QA, legal, supply-chain, and documentation are mandatory.
```

**PHP / Laravel**

```php
<?php
/**
 * AI Guardrails: See AI_GUARDRAILS.md.
 * Prefer built-ins and maintained packages; custom code only for business logic.
 * Keep code ATOMIC (small files/functions); refactor before adding to large files.
 * Use TDD, official docs, latest versions, and SME-led development.
 * Do not assume SME or AI is correct — clarify first.
 * Security, QA, legal, supply-chain, and documentation are mandatory.
 */
```

**Docs / Markdown**

```md
> ⚠️ AI Guardrails: See AI_GUARDRAILS.md.  
> Libraries first; custom code only for business logic.  
> Keep code ATOMIC (small files/functions); refactor before adding to large files.  
> TDD + official docs + SME alignment; security, QA, compliance, and documentation are mandatory.
```

## 19) Summary

* **Libraries first; custom code only for business logic.**
* **ATOMIC code**: keep files/functions small; **refactor before adding** to large files; leave the codebase **cleaner** each iteration.
* **TDD for business logic; don’t test third-party libraries.**
* **Official docs first; always use latest stable versions.**
* **Never assume SME or AI is correct — clarify and align before coding.**
* **Security, QA, documentation, supply-chain checks, legal compliance, and feature flags are mandatory.**
* **All tests must be green before completion.**
* **All code must be production-ready, secure, compliant, and deployable.**
* **SMEs must be able to run and test locally with clear instructions.**

If you want, I can also draft a tiny **CI policy snippet** (language-agnostic) that enforces atomicity by failing the build when a changed file exceeds configured thresholds (file length, function length, complexity).
