# AI\_GUARDRAILS.md

**General AI Guardrails for Code Generation & Collaboration**

These guardrails define how AI assistants (e.g., Copilot, ChatGPT, Codex) must behave when **proposing or generating code**. The goal is to ensure all output is **secure, stable, legally compliant, maintainable, SME-aligned, atomic, and production-ready**.


## 1) Principles

1. **Don’t reinvent the wheel** — prefer existing solutions.
2. **Keep code DRY** — avoid duplication.
3. **ATOMIC code** — keep files and functions **small, focused, and testable**.

   * One clear responsibility per file/module.
   * Prefer **≤100 lines per file** (soft target). Refactor before adding if >100 lines.
   * Keep functions short and cohesive; avoid deep nesting and high complexity.
4. **Understand full code context** before generating or editing code.
5. **Use latest stable versions of libraries** and handle breaking changes.
6. **Use TDD for business logic** — write the failing test first.
7. **Use official documentation** (always up front) for libraries and APIs.
8. **SME-led development** — never assume SME or AI is correct; **clarify and agree** before coding.
9. **Follow security best practices** (OWASP-grade).
10. **Never trust input** — validate and sanitize all input, from all sources (users, APIs, internal systems).
11. **Always handle errors explicitly** — never swallow or silently ignore them.
12. **Use feature flags** to isolate new/risky features and enable kill switches.
13. **Custom code only for business logic** — libraries first for infrastructure.
14. **Apply proven software design patterns** to keep code maintainable, extendable, and stable.
15. **Use sound architectural principles** and clear module boundaries.
16. **Use MCP tools** (Model Context Protocol) when available.
17. **Maintain human-readable documentation** aligned with changes.
18. **If you break it, you fix it** — all code must pass tests.
19. **Investigate failing tests** — distinguish test issues vs. code issues (esp. third-party libs).
20. **All tests must be green before completion** — no exceptions.
21. **All code must be production-ready and secure** — data, APIs, infra, and deployments.
22. **Databases must follow secure best practices** — migrations, access, encryption, backups.
23. **The SME must be able to run tests locally**.
24. **The SME must have clear instructions** for running the application.
25. **Follow legal & regulatory requirements** — licensing, privacy, accessibility, industry regs.
26. **Fail closed, secure by default** — default states should deny/disable, not allow/enable.
27. **Ensure external operations are idempotent** — retries must not cause duplicate effects (e.g., charges, emails).
28. **Remove dead code** — no unused code, TODOs, commented blocks, or abandoned flags.
29. **Auditability of critical actions** — sensitive operations must be logged with who/what/when/where.
30. **Enforce least privilege everywhere** — DB, services, CI/CD, cloud IAM, API keys, flags.
31. **Vet dependencies** — only use well-maintained, widely trusted libraries. Avoid abandonware.
32. **Deterministic builds** — reproducible builds with pinned versions.
33. **Keep code and docs in sync** — every endpoint, flag, or env var must be documented when added.


## 2) Guardrails for AI

### ✅ Libraries First

* Use standard/runtime libraries first.
* Use well-maintained, widely adopted OSS second.
* Write **custom code only for domain-specific business logic** and minimal glue.

### 🛑 Do Not Reinvent

Do **not** hand-roll: HTTP servers/routers, OAuth/OIDC, cryptography, DB clients, queues/schedulers, session management, logging/config/retries.

### 🧠 Business Logic Only

Custom code = domain workflows, event normalization, templating, sandboxing, and minimal adapters.


## 3) ATOMIC Code & File Hygiene (Enforced)

* **Small files, clear purpose**

  * **Target ≤100 lines per file**; hard cap 200.
  * Refactor before adding new code to an oversized file.
* **Small functions**

  * Prefer ≤25 lines; hard cap 40.
  * Keep cyclomatic complexity low.
* **Single responsibility**

  * One module = one reason to change.
  * Route wiring, validation, business logic, and IO concerns must be separated.
* **Iteration rule**

  * Leave every file **cleaner and more atomic** than you found it.
* **CI enforcement**

  * CI fails if files/functions exceed hard caps or complexity thresholds.


## 4) TDD Guardrails

* Write tests **before** code for business logic.
* Do **not** test third-party libraries.
* Keep tests deterministic; mock/stub external APIs.
* One **Gherkin** feature per file; **feature-flag** new behavior.
* CI runs tests on every commit; failures block merges.


## 5) Workflow for AI

1. **Read and understand requirements carefully.**

   * Do **not** assume SME or AI is automatically correct.
   * **Ask clarifying questions**; propose options; align on the plan.
2. **Consult official docs** for selected libraries/APIs (cite version).
3. **Write a failing test first** (TDD).
4. **Write minimal code** to pass; keep changes **atomic** and **scoped**.
5. **Refactor** (improve atomicity, DRY, patterns).
6. **Update documentation** aligned with changes.
7. **Run all tests**; ensure **everything is green**.


## 6) Documentation

* Maintain `/docs` with setup, run, routes, flags, commands, feature flags, architecture.
* Document new endpoints, env vars, and flags **at the time they are added**.
* Provide clear **local run/test** instructions for the SME.


## 7) Supply-Chain & Dependencies

* Commit lockfiles; generate SBOM in CI.
* Run dependency scanning; fail on high/critical CVEs unless waived.
* Approve only permissive licenses; document license review.
* Use only well-maintained, actively updated libraries.
* Update dependencies monthly; patch security updates within 72h.


## 8) Secrets & Configuration

* Never commit secrets.
* Use a secrets manager; rotate, least privilege, encrypt.
* 12-factor configs; env-separated; no env-specific logic in code.


## 9) Code Quality & Process

* Enforce formatting, linting, typing/static analysis in CI.
* Conventional Commits; PRs must describe risks, tests, docs links, and atomicity notes.
* Peer review required.
* APIs documented with schemas; contract tests in CI.
* Remove dead code, unused dependencies, and abandoned feature flags promptly.


## 10) Observability & Error Policy

* Structured logs with correlation; never log secrets/PII.
* Expose metrics for latency, error, throughput.
* Provide runbooks in `/docs/runbooks`.
* **Always handle errors explicitly** — log with context, propagate correctly, fail safe not open.
* Errors must be categorized; retries/backoff for transient issues; DLQs for jobs.


## 11) Data & Privacy

* Define data retention; implement deletion workflows.
* Comply with privacy regulations (GDPR, CCPA, HIPAA, etc.).
* Use least-privilege access control.
* Audit critical actions (who/what/when/where).


## 12) Performance & Resilience

* Define latency/error budgets.
* Lightweight perf checks in CI.
* Rate limiting and abuse protection.
* Timeouts, retries, circuit breakers.
* External operations must be **idempotent**.


## 13) Release & Migration Safety

* Feature flags and kill switches required.
* Default state for new flags = **off**. Kill switches = **on**.
* Safe deployments (staged/canary).
* Backward-compatible migrations; roll-forward strategy.


## 14) Frontend / UX

* Accessibility (WCAG AA).
* Atomic, testable components; avoid global CSS bloat.
* i18n/l10n readiness where relevant.


## 15) Legal & Regulatory Compliance

* Respect OSS licenses; document review.
* Meet privacy, accessibility, and industry regs.
* Ensure auditability where required.
* Deterministic builds with pinned versions.
* Compliance docs in `/docs/compliance`.


## 16) Examples (Framework-Agnostic)

### Example 1 — OAuth

❌ Wrong: Hand-rolled OAuth handler.
✅ Correct: Use framework routing + official OAuth guidance.

### Example 2 — Cryptography

❌ Wrong: Manual base64 HMAC.
✅ Correct: Use official crypto APIs/libraries.

### Example 3 — Queueing

❌ Wrong: DIY queue with push/pop primitives.
✅ Correct: Use a proven, well-maintained job queue library.

### Example 4 — Business Logic

✅ Correct: Custom code to normalize webhook payloads into domain events and render tokenized templates.

### Example 5 — Session Management

❌ Wrong: Ad-hoc tokens/cookies.
✅ Correct: Use an established session mechanism; secure cookies; expiry/rotation; avoid storing sensitive data directly.


## 17) Compliance Checklist (Before Merge)

* [ ] Atomicity upheld (files/functions small; refactor before adding).
* [ ] Code follows all principles.
* [ ] TDD followed; tests added and green.
* [ ] Latest stable libs; breaking changes handled.
* [ ] Official docs consulted and referenced.
* [ ] Minimal, effective, DRY, low complexity.
* [ ] All input validated and sanitized.
* [ ] All errors explicitly handled (no silent failures).
* [ ] Secure defaults: fail closed; flags default off.
* [ ] Security reviewed; no secrets/PII leakage.
* [ ] External operations idempotent.
* [ ] Supply-chain scans pass; licenses reviewed.
* [ ] Dead code removed.
* [ ] `/docs` updated (including compliance).
* [ ] SME can run locally with clear instructions.
* [ ] Legal/regulatory requirements satisfied.
* [ ] All CI checks green.


## 18) Language-Specific Reference Headers

*(examples unchanged except for added explicit input validation + error handling)*


## 19) Summary

* **Libraries first; custom code only for business logic.**
* **ATOMIC code**: small, focused, refactor before adding; leave code cleaner each iteration.
* **TDD for business logic; don’t test third-party libraries.**
* **Never trust input — always validate/sanitize.**
* **Always handle errors explicitly — never swallow exceptions.**
* **Fail closed by default; secure defaults for flags/configs.**
* **External ops idempotent; dead code removed.**
* **Official docs first; latest stable libraries.**
* **Clarify with SME before coding.**
* **Security, QA, documentation, supply-chain checks, compliance, and feature flags are mandatory.**
* **All tests green before completion.**
* **All code must be production-ready, secure, legally compliant, and deployable.**
* **SMEs must be able to run and test locally with clear instructions.**
