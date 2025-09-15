# GUARDRAILS.md

**General, Language-Agnostic Guardrails for AI-Assisted Software Development**

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## 0) Scope & Audience

* Applies to **all** code, configuration, documentation, tests, pipelines, and operational artefacts in this repository.
* Applies to **all contributors** (humans and AI) and **all environments** (local, CI, staging, production).

---

## 1) Core Principles (Explicit, Binding)

1. **Libraries First**

   * Infrastructure/commodity capabilities **MUST** use maintained, widely-adopted libraries or platform features.
   * Custom implementations of commodity concerns **MUST NOT** be written.

2. **Custom Code == Business Logic Only**

   * Bespoke code **MUST** be limited to **domain-specific** logic, glue, and adapters.

3. **ATOMIC Code (Small, Focused, Testable)**

   * Files **SHOULD** target **≤ 100 lines**; files **MUST NOT** exceed **200 lines**.
   * Functions **SHOULD** target **≤ 25 lines**; functions **MUST NOT** exceed **40 lines**.
   * Cyclomatic complexity **SHOULD** be **≤ 10**; **MUST NOT** exceed **15**.
   * If a touched file exceeds any **hard cap**, it **MUST** be refactored **before** merge.
   * Each module **MUST** have a **single responsibility**.

4. **TDD for Business Logic**

   * New or changed business logic **MUST** start with a **failing test**.
   * Third-party libraries **MUST NOT** be unit-tested internally; their edges **MUST** be mocked/stubbed.

5. **Never Trust Input**

   * **All** inputs from **any** source (users, internal services, databases, events, files, caches, CLIs, env vars, third-party APIs) **MUST** be validated against explicit schemas or rules **before use**.
   * Invalid input **MUST** fail fast with clear, safe errors.
   * Sanitization/normalization **MUST** be applied where appropriate.

6. **Always Handle Errors Explicitly**

   * Errors/exceptions **MUST NOT** be swallowed or ignored.
   * Errors **MUST** be classified, logged without sensitive data, surfaced appropriately, and handled to **fail safe (closed)**.

7. **Official Documentation First**

   * The **latest official docs** for any technology in use **MUST** be consulted **before** writing or changing code that uses it.
   * Version and links **MUST** be captured in the PR description.

8. **Latest Stable Versions**

   * Dependencies **MUST** be on **latest stable** versions unless a documented waiver exists. Breaking changes **MUST** be addressed.

9. **SME-Led, Assumption-Free Collaboration**

   * Neither SME nor AI is assumed correct. The AI **MUST** ask clarifying questions and propose options until **explicit agreement** on the plan exists.

10. **Security by Default**

    * Deny-by-default; least privilege; no secrets in repo or logs; encryption in transit and at rest where sensitive data exists.

11. **Feature Flags & Kill Switches**

    * New features **MUST** be flag-gated. Flags **MUST** default **off**. Kill switches **MUST** default **on** and be documented.

12. **QA Best Practices**

    * Deterministic tests; stable CI; flakiness **MUST** be fixed or quarantined within **48h**.

13. **Sound Architecture & Design Patterns**

    * Separation of concerns; dependency boundaries; testable design; idempotent external interactions.

14. **Documentation Alignment**

    * Documentation **MUST** be updated **in the same PR** as behavior/config changes. Humans **MUST** be able to run locally with clear instructions.

15. **Legal & Regulatory Compliance**

    * Licensing, privacy, accessibility, and industry-specific regulations **MUST** be satisfied and documented.

16. **Deterministic Builds**

    * Builds **MUST** be reproducible (pinned toolchains and lockfiles).

17. **Leave It Cleaner**

    * Every change **MUST** maintain or improve atomicity, clarity, and safety. Dead code **MUST** be removed.

18. **Knowledge Management**

    * Key decisions **MUST** be documented in Architecture Decision Records (ADRs).
    * Successful patterns and anti-patterns **MUST** be captured for future reference.
    * Risks and mitigations **MUST** be identified and documented.

19. **Human-AI Collaboration Framework**

    * AI **MUST** defer to human expertise when uncertain or when human knowledge is explicitly required.
    * AI **MUST** provide confidence levels with recommendations.
    * Humans and AI **MUST** engage in explicit agreement processes before implementation.
    * AI **MUST** document its limitations and knowledge gaps.

---

## 2) Prohibited Re-Implementations (MUST NOT)

You **MUST NOT** hand-roll: HTTP servers/routers; authentication/OAuth/OIDC; cryptography (HMAC, JWT, AES, hashing); database clients/query engines; queueing/scheduling; session management; logging frameworks; configuration loaders; retry backoff engines. Use established, maintained solutions.

---

## 3) Validation, Authorization, and Boundaries

* **Input Validation**: Required at **every boundary** (request handlers, message consumers, CLI, env, file IO).
* **Authorization**: Access control checks **MUST** occur server-side and at the **point of action**, not only at UI.
* **Idempotency**: All externally visible operations subject to retries (webhooks, payments, emails, provisioning) **MUST** be idempotent.

---

## 4) Error Handling Policy

* **Classify**: Distinguish caller errors (4xx) from server/transient errors (5xx).
* **Log**: Structured, contextual logs; **MUST NOT** contain secrets/PII.
* **Propagate**: Provide safe, minimal error messages externally; rich context internally.
* **Fail Safe (Closed)**: On uncertainty, deny/abort rather than allow.
* **Retry**: Use bounded, jittered backoff for transient failures; adopt dead-letter handling for messages/jobs.

---

## 5) Testing Requirements (CI-Blocking)

* **TDD**: Failing test first for business logic.
* **Coverage**: Business logic **MUST** meet **≥ 80%** line and **≥ 70%** branch coverage (or project-defined stricter gates).
* **Runtime**: Unit tests **SHOULD** complete in **≤ 3 minutes** in CI; longer suites **MUST** be parallelized or optimized.
* **Isolation**: No live external calls; use test doubles.
* **Flakes**: Any flaky test **MUST** be fixed or quarantined within **48 hours**.
* **Performance**: Critical paths **SHOULD** have performance benchmarks.

---

## 6) Atomicity Enforcement (CI-Blocking)

* **Hard caps**:

  * Files > **200** lines → **Fail CI**.
  * Functions > **40** lines → **Fail CI**.
  * Complexity > **15** → **Fail CI**.
* **Soft caps** (warnings):

  * Files > **100** lines; Functions > **25** lines; Complexity > **10**.
* If a touched file breaches a hard cap, it **MUST** be split **before** merge.
* Route wiring, validation, business logic, and IO **MUST** live in **separate modules**.

---

## 7) Supply Chain & Dependencies

* **Lockfiles**: **MUST** be committed for reproducibility.
* **SBOM**: A Software Bill of Materials **MUST** be generated for each release.
* **Vulnerability Scanning**: CI **MUST** fail on **High/Critical** issues unless a time-boxed waiver is approved.
* **License Compliance**: Only compatible, permissive licenses allowed unless explicitly approved.
* **Vetting**: Dependencies **MUST** be active, maintained, documented, and widely trusted. Avoid abandonware/single-maintainer risks in critical paths.
* **Update Cadence**: Regular updates at least **monthly**; security patches within **72 hours** of disclosure.

---

## 8) Secrets & Configuration

* **No Secrets in Repo**: Secrets **MUST NOT** exist in code, history, sample env files, or documentation.
* **Secret Management**: Centralized secret storage with rotation and least privilege **MUST** be used.
* **12-Factor Config**: Configuration **MUST** be environment-provided; no hard-coded env-specific logic.
* **Key Rotation**: At least **quarterly** or on incident; rotation plans **MUST** be documented.

---

## 9) Observability & Operability

* **Structured Logging**: Correlation/request identifiers **MUST** be present; logging levels **MUST** be appropriate for environment.
* **Metrics & Health**: Services **MUST** expose basic availability, latency, and error metrics; health/readiness endpoints **MUST** exist where applicable.
* **Runbooks**: Deploy, rollback, incident response, and on-call procedures **MUST** be documented in `/docs/runbooks/`.
* **No PII/Secrets in Logs**: Enforced by policy and CI checks where feasible.
* **Chaos Engineering**: Safe, small-scale chaos experiments **SHOULD** be conducted for critical services.

---

## 10) Data Management & Privacy

* **Classification**: Data **MUST** be classified (e.g., Public/Private/Sensitive) and handled accordingly.
* **Retention**: Retention periods **MUST** be defined and enforced per data class.
* **Rights**: Where applicable, support access/export/erasure workflows.
* **Backups**: Production data **MUST** be backed up at least daily; restores **MUST** be tested quarterly.
* **Access**: Least privilege to databases and storage; sensitive operations **MUST** be auditable.

---

## 11) Performance & Resilience

* **Budgets**: Each critical endpoint/job **MUST** have p95 latency and error budgets defined.
* **Rate Limiting/Throttling**: **MUST** exist for public and tenant-scoped entry points.
* **Reliability**: Use timeouts, retries with backoff, and circuit breaking at external boundaries.
* **Idempotency**: External-facing side effects **MUST** be idempotent (enforced via keys/sequencing).

---

## 12) Release & Migration Safety

* **Feature Flags**: All new features behind flags; default off; kill switches default on; flags documented in `/docs/feature-flags.md`.
* **Deploy Strategy**: Prefer staged or canary deployments for user-impacting changes.
* **Migrations**: Backward-compatible; zero-downtime strategy; roll-forward only in production (no destructive downs).
* **Chaos Engineering**: Conduct safe, small-scale chaos experiments as part of release validation.

---

## 13) Frontend & Accessibility (If Applicable)

* **Accessibility**: UIs **MUST** meet **WCAG AA** minimum.
* **Atomic Components**: Small, focused, testable.
* **Internationalization**: Strings **SHOULD** be externalized where localization is in scope.
* **Performance**: Core user journeys **MUST** meet performance benchmarks.

---

## 14) Legal & Regulatory Compliance

* **Licensing**: OSS licenses **MUST** be compliant and recorded; incompatibilities **MUST** be removed or waived with time-boxed approval.
* **Privacy**: Where applicable, comply with GDPR/CCPA/HIPAA/etc.; document data flows, processors, and DPA status.
* **Accessibility**: WCAG compliance **MUST** be documented for UI.
* **Industry Regs**: If in scope (e.g., PCI-DSS, SOC 2), controls **MUST** be satisfied and evidenced.
* **Auditability**: Critical actions **MUST** be logged with who/what/when/where in an immutable or tamper-evident way.

---

## 15) Workflow for AI & Contributors

1. **Clarify**: Read requirements; ask targeted questions; propose 1–2 options; obtain **explicit agreement** on approach.
2. **Research**: Consult latest official documentation; record versions/links in PR.
3. **TDD**: Write failing tests for business logic.
4. **Implement**: Minimal code to pass; respect **ATOMIC** limits; **never trust input**; explicit error handling; secure by default.
5. **Refactor**: Improve clarity, atomicity, and boundaries without changing behavior.
6. **Document**: Update `/docs` in the same PR (setup, run, flags, endpoints, env, runbooks, compliance notes).
7. **Verify**: All tests green; CI gates pass; SME can run locally using documented steps.

---

## 16) Documentation Requirements (Non-Optional)

* `/docs/setup.md` (tooling/requirements), `/docs/run.md` (start/stop), `/docs/testing.md`, `/docs/architecture.md`, `/docs/feature-flags.md`, `/docs/runbooks/*`, `/docs/compliance/*`.
* Any new endpoint, env var, flag, migration, or permission **MUST** be documented in the same PR.
* Key decisions **MUST** be documented in ADRs.
* Risks and mitigations **MUST** be documented.

---

## 17) Governance, Exceptions, and Waivers

* **Exceptions**: Any deviation from these guardrails **MUST** have a written waiver in the PR description including:

  * Scope, rationale, compensating controls, expiry date (≤ 30 days), and responsible owner.
* **Expiry**: Waivers **MUST** be tracked and either resolved or re-approved before expiry.
* **No Silent Deviations**: Undeclared deviations **MUST NOT** be merged.

---

## 18) CI/CD Enforcement (Blocking Gates)

A merge **MUST** be blocked if **any** of the following fail:

* Tests not green or coverage below gates (≥ 80% line / ≥ 70% branch for business logic).
* Atomicity hard caps exceeded (file/function length; complexity).
* Dependency vulnerability or license checks failing without waiver.
* Linting/static analysis/type checks failing.
* Required docs missing or out of date.
* Compliance checklist incomplete (when in scope).
* SME local run/test instructions missing or not updated.
* Required approvals/reviews absent.

---

## 19) Code Quality Standards

* All code **MUST** adhere to language-specific style guides and best practices.
* Type systems **MUST** be fully utilized in typed languages (e.g., TypeScript, Rust, Haskell).
* Linting tools **MUST** be run on all code; failures **MUST** be addressed before merge.
* Language-specific formatting tools **MUST** be used (e.g., Prettier for JavaScript/TypeScript, Laravel Pint for PHP, gofmt for Go).
* Code **MUST** be reviewed for idiomatic usage of the language and frameworks.

---

## 20) Pull Request Checklist (Copy into Template)

* [ ] **Libraries first**; no re-invented wheels.
* [ ] **Custom code only** for business logic.
* [ ] **ATOMIC** upheld (files ≤ 200 lines, functions ≤ 40 lines; complexity ≤ 15); extractions over accretion.
* [ ] **TDD** followed (failing test → passing).
* [ ] **All inputs validated/sanitized** at boundaries.
* [ ] **Errors handled explicitly**; fail safe (closed); no secrets/PII in logs.
* [ ] **Feature flags** added/updated; default off; kill switch documented.
* [ ] **Idempotency** ensured for external side effects.
* [ ] **Official docs consulted**; versions/links included.
* [ ] **Latest stable deps**; breaking changes handled.
* [ ] **Supply chain** checks pass; SBOM generated; licenses compliant.
* [ ] **Dead code removed**; codebase left **cleaner**.
* [ ] **Docs updated** in `/docs` (setup/run/testing/architecture/flags/runbooks/compliance).
* [ ] **SME can run locally** with documented commands; all CI checks **green**.
* [ ] **Legal/Regulatory** requirements reviewed and satisfied (if applicable).
* [ ] **No undeclared waivers**; any exception documented and time-boxed.
* [ ] **Key decisions documented** in ADRs.
* [ ] **Risks identified and mitigated**.
* [ ] **Human-AI collaboration** followed explicit agreement process.
* [ ] **Code quality standards** met; linting and formatting tools run; type systems fully utilized.

---

## 21) Summary (Non-Negotiable)

* Use **libraries first**; write **custom code only** for business logic.
* Keep code **ATOMIC**; refactor before adding to oversized modules.
* Practice **TDD**; ensure **all tests are green**.
* **Never trust input**; validate and sanitize at every boundary.
* **Always handle errors explicitly**; fail closed; avoid PII/secrets in logs.
* **Feature-gate** new behavior; kill switches on by default.
* Maintain **security**, **legal/regulatory compliance**, and **supply-chain hygiene**.
* Ensure **idempotency** for external side effects.
* Keep **docs current** and **builds deterministic**.
* **No silent exceptions**; waivers are documented, time-boxed, owned.
* **If you break it, you fix it** — and you **do not merge** until **everything is green**.
* **Document key decisions** in ADRs.
* **Identify and mitigate risks** proactively.
* **Follow Human-AI collaboration framework** with explicit agreements.
* **Adhere to code quality standards**; use linting and formatting tools; fully utilize type systems.

---

## Definitions

- **Business Logic**: Domain-specific rules and transformations delivering product value.
- **Commodity Concern**: Generic capability widely available as a library/platform feature.
- **Boundary**: Any interface where data crosses trust or module lines (HTTP, messaging, files, CLI, env, DB).
- **Fail Safe (Closed)**: Default to deny/abort on uncertainty or failure.
- **Idempotency**: Repeated execution yields one net effect.
- **Atomicity**: Small, single-responsibility modules; low complexity; easily testable.
- **TDD (Test-Driven Development)**: A software development approach where tests are written before implementation code.
- **CI/CD (Continuous Integration/Continuous Deployment)**: Automated processes that integrate code changes and deploy them to production environments.
- **SBOM (Software Bill of Materials)**: A complete list of components, libraries, and modules in a software application.
- **Feature Flag**: A mechanism that allows enabling or disabling features without deploying new code.
- **Kill Switch**: A mechanism that allows immediate disabling of a feature or service in case of problems.
- **ADR (Architecture Decision Record)**: A document that captures an important architectural decision made along with its context and consequences.
- **Chaos Engineering**: The discipline of experimenting on a system to build confidence in the system's capability to withstand turbulent conditions in production.

---

> By contributing to this repository (human or AI), you acknowledge and agree to these guardrails. Violations **WILL** block merges.
