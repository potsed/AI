# Human–AI Software Delivery Process

This document defines the **iterative process** for Human–AI co-development.  
It complements `GUARDRAILS.md` (standards and boundaries).

---

## 0. Initialise

- Create repo scaffolds: `PURPOSE.md`, `OUTCOMES.yaml`, `PLAN.md`, `ADRs/`, `RUNBOOK.md`, `PROMPTS/`.
- AI generates structure. Human confirms.

---

## 1. Define Purpose

**Artifact:** `PURPOSE.md`  
- One-sentence purpose  
- Success metric + target date  
- Owner

---

## 2. Define Product Outcomes

**Artifact:** `OUTCOMES.yaml`  
Format per outcome:
```yaml
- id: O1
  statement: "When <context>, <user> can <verb>."
  metric: <name>
  baseline: <value>
  target: <value by YYYY-MM-DD>
  owner: <name>
  progress: <auto-updated>
```

---

## 3. Plan Vertical Slices

**Artifact:** `PLAN.md`
- Decompose into 3–7 day slices
- Each slice links to outcome IDs
- Each slice has acceptance tests
- Each slice has a feature flag

---

## 4. Slice Loop (repeat for Sₙ)

### 4.1 Clarify
- AI restates assumptions and risks
- Human approves or adjusts plan

### 4.2 Write Failing Tests
- AI produces deterministic tests from acceptance cases
- Tests fail initially

### 4.3 Implement Minimal Code
- AI writes code to pass tests
- Human reviews patch + rationale

### 4.4 Refactor
- AI reduces complexity, applies standards
- Human confirms readability and maintainability

### 4.5 Observability & Docs
- AI adds logs/metrics and updates README + runbook
- Human verifies

### 4.6 Integrate Behind Flag
- AI wires feature to flag
- AI updates RUNBOOK.md with canary + rollback steps

### 4.7 Demo & Measure
- Human enables flag in non-prod
- AI updates OUTCOMES.yaml with progress vs targets

### Definition of Done for Slice
- Tests green
- Docs + runbook updated
- Observability in place
- Feature behind flag
- Outcome progress updated

---

## 5. Review Cadence
- Weekly: check deltas vs outcomes
- Reprioritise slices
- Update ADRs

---

## 6. Release Loop
- AI proposes staged rollout with kill switch
- Human validates and approves
- Post-deploy: compare metrics to targets

---

## 7. Artefact Ledger
- `PURPOSE.md` – one-liner, metric, owner
- `OUTCOMES.yaml` – measurable goals
- `PLAN.md` – slice map
- `ADRs/` – decision records
- `RUNBOOK.md` – enable, rollback, alerts
- `PROMPTS/` – saved prompts + model params

---

## Prompt Template

Use consistently for AI tasks:

Context: PURPOSE.md, OUTCOMES.yaml, PLAN.md
Task: Implement slice Sₙ for outcomes [O1,O2]
Constraints: TDD, deterministic tests, no TODOs
Output: unified diff patch only + 5–7 line PR body

---

## PR Body Template

Problem: <short>
Approach: <short>
Tests: <evidence>
Risks: <top 2 + mitigations>
Links: PURPOSE/OUTCOMES/Sₙ

---

## Triggers to Replan
- Outcome off track two cycles
- Repeated refactor friction
- New dependency or risk discovered

---

## Definitions

- **Human-AI Co-development**: A collaborative software development approach where humans and AI assistants work together iteratively, with humans providing oversight, domain expertise, and final approval while AI contributes technical implementation, documentation, and testing capabilities.

- **Vertical Slice**: A cross-functional, end-to-end piece of work that delivers measurable business value and can be completed within 3-7 days. Each slice includes implementation, testing, documentation, and observability.

- **Feature Flag**: A mechanism that allows features to be enabled or disabled without deploying new code, enabling safe rollouts, canary releases, and quick rollback capabilities.

- **TDD (Test-Driven Development)**: A software development practice where tests are written before the implementation code, following the Red-Green-Refactor cycle to ensure code quality and test coverage.

- **Deterministic Tests**: Tests that produce the same results every time they are run, without any randomness or external dependencies that could cause intermittent failures.

- **ATOMIC Code**: A principle of writing small, focused, and testable code modules where files target ≤ 100 lines, functions target ≤ 25 lines, and cyclomatic complexity stays ≤ 10.

- **Observability**: The practice of making systems understandable from the outside through logs, metrics, and traces, enabling effective monitoring, debugging, and performance optimization.

- **Artefact**: Any document, file, or output produced during the software development process, including planning documents, source code, tests, and documentation.

