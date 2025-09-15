# Definitions

This file provides clear definitions of terms used across `PROCESS.md` and `GUARDRAILS.md`.

---

## Artefacts
- **PURPOSE.md** – Single-sentence purpose, owner, success metric, and deadline.  
- **OUTCOMES.yaml** – List of measurable product outcomes with baselines, targets, owners, and progress.  
- **PLAN.md** – Map of vertical slices, each linked to outcome IDs, acceptance tests, and feature flags.  
- **ADRs/** – Architecture Decision Records documenting key technical or product choices.  
- **RUNBOOK.md** – Operational instructions including enablement, canary, rollback, and alerts.  
- **PROMPTS/** – Saved prompts and model parameters used in AI-assisted development.  

---

## Core Concepts
- **Outcome** – A measurable, user-observable result (not a task). Format: *When [context], [user] can [verb], measured by [metric], target [value].*  
- **Vertical Slice (Slice)** – A self-contained increment of software that cuts across layers (UI, logic, storage, integration) to deliver a user-observable outcome. Each slice:  
  - Must link to at least one outcome ID  
  - Must include acceptance tests  
  - Must be completable in ≤ 3 days  
  - Must be deployable behind a feature flag  
- **Acceptance Test** – A deterministic, automated test that encodes the success criteria for a slice or outcome.  
- **Feature Flag** – A runtime switch allowing safe enable/disable of features. Used for canaries and rollbacks.  
- **Canary Release** – Staged rollout of a feature to a subset of users or environments to detect issues early.  
- **Kill Switch** – Immediate disable mechanism for a risky or faulty feature.  

---

## Roles
- **Human** – Responsible for framing problems, approving outputs, ensuring compliance, and owning final decisions.  
- **AI** – Responsible for proposing code, tests, docs, or refactors under constraints and guardrails. Never self-approves.  

---

## Development Practices
- **TDD (Test-Driven Development)** – Write failing tests first, then implement code to make them pass, then refactor.  
- **Refactor** – Improve code structure, readability, and maintainability without changing external behaviour.  
- **Observability** – The ability to understand system state through structured logs, metrics, and traces.  
- **Atomicity** – Keeping code units small and simple: functions, files, and slices limited in size and complexity.  
- **Slice Flow** – The iterative loop for delivering a slice: clarify → write failing tests → implement minimal code → refactor → add observability/docs → integrate behind flag → demo & measure.  

---

## Governance
- **ADR (Architecture Decision Record)** – A short, version-controlled document capturing the context, decision, and consequences of a significant technical choice.  
- **Waiver/Exception** – A time-boxed, documented allowance to deviate from guardrails. Must have an owner and expiry date.  
- **SBOM (Software Bill of Materials)** – A manifest of all dependencies and versions in the system, used for security and licence compliance.  

---

## Testing
- **Unit Test** – Validates a single function or module in isolation.  
- **Integration Test** – Validates interaction between multiple modules or with external systems.  
- **Property-Based Test** – Validates behaviour over a wide range of generated inputs.  
- **Flaky Test** – A test that passes and fails nondeterministically. Must be fixed or quarantined quickly.  

---

## Security
- **Secret** – Any credential, key, token, or password. Must never appear in code, tests, prompts, or logs.  
- **PII (Personally Identifiable Information)** – Any data that can identify an individual. Must not be exposed in prompts, logs, or test data.  
- **Least Privilege** – Granting only the minimal access required for a component or user to perform its role.  

---

## Compliance
- **WCAG AA** – Web Content Accessibility Guidelines level AA, minimum accessibility standard.  
- **GDPR / HIPAA** – Examples of regional data protection regulations that may apply depending on jurisdiction.  

---