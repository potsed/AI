# AI\_GUARDRAILS.md

**General AI Guardrails for Code Generation & Collaboration**

These guardrails define how AI assistants (e.g., Copilot, ChatGPT, Codex) must behave when **proposing or generating code** for this repository. The goals are **security**, **stability**, **maintainability**, and **alignment with the Subject Matter Expert (SME).**

---

## 1) Core Principles

* **Libraries First** — Prefer standard runtime and well-maintained open-source libraries.
* **Custom Code Only for Business Logic** — Write bespoke code only where it implements the project’s domain-specific behavior.
* **TDD First** — Use Test-Driven Development for business logic and unit-level code.
* **Docs First** — Read the **latest official documentation** before writing code that uses a library or API.
* **Latest Versions** — Use the **most up-to-date library versions** and update code for breaking changes when needed.
* **SME-Led** — The human providing requirements is the **Subject Matter Expert (SME)**. Ask clarifying questions; don’t assume intent.

---

## 2) Guardrail Rules for AI

### ✅ Prefer Existing Libraries

* Use **standard libraries** first (e.g., Node.js `crypto`, Go `net/http`, PHP/Laravel first-party features).
* Use **well-adopted OSS** second (e.g., recognized frameworks, database clients, job queues).
* Choose libraries that are **actively maintained**, have **healthy adoption**, and use **permissive licenses**.

### 🛑 Do Not Reinvent

Do **not** hand-roll:

* HTTP servers / routers
* OAuth / OIDC flows
* Cryptography (HMAC, JWT, AES, etc.)
* Database clients / query builders
* Queue systems
* **Session management systems**
* Common utilities (logging, retries, configuration, env parsing)

### 🧠 Custom Code = Business Logic

Limit bespoke code to:

* Project-specific workflows and domain transformations
* Simple glue/adapters between libraries and domain logic
* Sandboxing/guardrails (e.g., scoping data and access)
* Lightweight, well-documented extensions where no solid library fits

---

## 3) TDD Guardrails

* **Write tests before code** for all **business logic** and **unit-level** functions.
* **Do not test third-party libraries**; assume they work as documented. Mock/stub their boundaries.
* **Deterministic tests** only (no network, no external side effects).
* **Gherkin features**: one feature per file describing behavior; **feature-flag** new behavior.

**TDD Cycle (Red → Green → Refactor):**

1. Write a failing test that encodes the requirement.
2. Implement the minimal code to pass.
3. Refactor for clarity/performance without breaking tests.

**CI/CD:** Run unit tests on every commit; failing tests block merges/deploys.

---

## 4) Documentation & Versions

* **Official docs first.** Before using any library/API, consult its latest official documentation.
* **Log decisions.** In PRs, note the version, links to docs, and any breaking changes addressed.
* **Stay current.** Prefer latest stable versions; if upgrades break code, fix as part of the task (unless SME instructs otherwise).

---

## 5) SME Collaboration

* Treat the human author as the **SME**.
* Ask **targeted clarifying questions** when requirements are ambiguous.
* Prefer **minimal, effective** changes over sweeping refactors.
* Explain trade-offs succinctly (security, performance, complexity, cost).
* Confirm acceptance criteria before implementation.

---

## 6) Responsibilities & Quality Bar

AI-assisted output must:

* Apply sound architecture; keep code **DRY**, **SOLID**, and **low cyclomatic complexity**.
* Use **secure, maintained libraries**; avoid deprecated or unmaintained packages.
* Meet **production-ready** expectations:

  * OWASP-aligned security posture
  * Markdown docs in `/docs` (setup, commands, routes, flags, runbooks)
  * Pen-test mindset and QA validation
  * E2E and/or contract tests where applicable
  * Feature-flagged releases
  * All CI checks green

---

## 7) Process Instructions (How to Work)

1. Write **Gherkin** features (one per file). Feature-flag new behavior.
2. **TDD** for each change:

   * Write a failing unit test.
   * Implement minimal code to pass.
   * Refactor safely.
3. Ensure no regressions; keep changes minimal.
4. Re-run all tests; merge only when green.

**How to make tests fail initially:**

* Reference a function/class that doesn’t exist yet.
* Use asserts that encode the *new* requirement so they fail until implemented.

---

## 8) Examples

### Example 1 — OAuth

* ❌ **Wrong:** Roll your own OAuth handler.
* ✅ **Correct:** Use framework routes + official OAuth guidance; use reputable HTTP client libs.

### Example 2 — Cryptography

* ❌ **Wrong:** Manual base64 HMAC.
* ✅ **Correct:** Use standard crypto libraries (e.g., Node `crypto.createHmac`, Go `crypto/hmac`, PHP `hash_hmac`).

### Example 3 — Queueing

* ❌ **Wrong:** Custom Redis queue using `rpush/lpop`.
* ✅ **Correct:** Use a proven job queue library (e.g., BullMQ, Laravel Queues, Asynq).

### Example 4 — Business Logic

* ✅ **Correct:** Write bespoke code that transforms incoming payloads into domain events and renders user-facing messages with token templates.

### Example 5 — Session Management

* ❌ **Wrong:** DIY session stores/cookies or ad-hoc tokens.
* ✅ **Correct:**

  * **Node/TS:** `@fastify/session`, `iron-session`, or JWT (`jsonwebtoken`) with short expiries & rotation.
  * **Go:** `gorilla/sessions`, `securecookie`, or framework built-ins.
  * **PHP/Laravel:** Laravel session manager (file/DB/Redis) with secure cookies.
  * Always set `Secure`, `HttpOnly`, `SameSite`, expiries/idle timeouts; avoid storing secrets/PII in session.

---

## 9) Language / Framework Notes (General)

> Use these as general orientations—pick equivalents appropriate to the tech stack.

* **Node.js / TypeScript / ECMAScript**: Prefer Fastify/Express, Zod/validation, reputable DB and queue clients, Node `crypto`.
* **PHP / Laravel**: Prefer first-party features (Eloquent, Validation, Queues, Scheduler, Policies), Composer-managed deps, Pest/PHPUnit.
* **Go**: Prefer stdlib/established routers (chi/echo), typed DB access (pgx/sqlc), established job libs, `crypto/*`.
* **Frontend (Vue / Vite / Tailwind / CSS)**: Keep components small, accessible, and feature-flagged; test logic; avoid global CSS bloat.

---

## 10) Documentation Requirements

* Maintain `/docs` in Markdown:

  * Architecture, endpoints, commands, flags, configuration
  * Feature flags and release notes
  * Security considerations / threat model
  * Runbooks and setup

Each PR updates relevant docs when behavior or configuration changes.

---

## 11) Security & QA

* Align with **OWASP** and secure-by-default practices.
* Threat-model externally exposed surfaces.
* Add contract tests for external integrations.
* Keep QA suites **fast, resilient, and low-flake**.
* Don’t log secrets or PII; encrypt sensitive data at rest/in transit.

---

## 12) Compliance Checklist (Before Merge)

* [ ] Behavior described in **Gherkin** and **feature-flagged**
* [ ] **TDD unit tests** added & passing; no tests of third-party internals
* [ ] Libraries at **latest stable versions**; breaking changes addressed
* [ ] **Official docs** consulted; PR notes include versions & links
* [ ] Minimal, well-factored changes; code is **DRY/SOLID** with low complexity
* [ ] Security considerations addressed; no secret/PII leaks
* [ ] `/docs` updated appropriately
* [ ] All CI checks **green** (unit/integration/e2e/contract as applicable)

---

## 13) Header Comments (Reference)

Add a brief header in new files pointing back to this policy:

**TypeScript / JavaScript**

```ts
/**
 * AI Guardrails: See AI_GUARDRAILS.md for full rules.
 * Libraries first; custom code only for business logic.
 * Use TDD; don’t test third-party internals; read official docs; use latest versions.
 * Ask the SME clarifying questions; justify choices.
 */
```

**Go**

```go
// AI Guardrails: See AI_GUARDRAILS.md.
// Libraries first; custom code only for business logic.
// Use TDD; don’t test third-party internals; read official docs; use latest versions.
// Ask the SME clarifying questions; justify choices.
```

**PHP / Laravel**

```php
<?php
/**
 * AI Guardrails: See AI_GUARDRAILS.md.
 * Prefer built-ins and maintained Composer packages; use Laravel first-party features.
 * Use TDD; don’t test third-party internals; read official docs; use latest versions.
 * Ask the SME clarifying questions; justify choices.
 */
```

**Docs / Markdown**

```md
> ⚠️ AI Guardrails: See AI_GUARDRAILS.md.  
> Libraries first; custom code only for business logic.  
> TDD for logic; official docs; latest versions; SME-led decisions.
```

---

## 14) Optional README Badge

```md
[![AI Guardrails](https://img.shields.io/badge/🛡️%20AI_Guardrails-Enforced-blueviolet)](https://raw.githubusercontent.com/potsed/AI/refs/heads/main/AI_GUARDRAILS.md)
```

---

## 15) Summary

* **Libraries First**
* **Custom Code = Business Logic Only**
* **TDD for business logic; don’t test libraries**
* **Official docs up front; latest versions**
* **SME-led: clarify, then implement**
* **Security, docs, QA, feature flags: non-negotiable**
