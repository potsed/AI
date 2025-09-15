# Human–AI Software Delivery Process

This document defines the **iterative process** for Human–AI co-development.  
It complements `GUARDRAILS.md` (standards and boundaries).

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## 0. Initialise

- Create repo scaffolds: `PURPOSE.md`, `.perseus/OUTCOMES.yaml`, `.perseus/PLAN.md`, `.perseus/ADRs/`, `.perseus/RUNBOOK.md`, `.perseus/PROMPTS/`.
- AI generates structure. Human confirms.

---

## 1. Define Purpose

**Artifact:** `PURPOSE.md`  
- One-sentence purpose  
- Success metric + target date  
- Owner

---

## 2. Define Product Outcomes

**Artifact:** `.perseus/OUTCOMES.yaml`  
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

**Artifact:** `.perseus/PLAN.md`
- Decompose into 3–7 day slices
- Each slice links to outcome IDs
- Each slice has acceptance tests
- Each slice has a feature flag
- Each slice includes potential failure modes identification

---

## 4. Slice Loop (repeat for Sₙ)

### 4.1 Clarify
- AI restates assumptions and risks
- AI identifies potential failure modes (pre-mortem analysis)
- Human approves or adjusts plan
- AI and Human engage in explicit agreement process

### 4.2 Write Failing Tests
- AI produces deterministic tests from acceptance cases
- Tests fail initially
- Human reviews test approach and coverage

### 4.3 Implement Minimal Code
- AI writes code to pass tests
- Human reviews patch + rationale
- AI provides confidence levels with implementation

### 4.4 Refactor
- AI reduces complexity, applies standards
- Human confirms readability and maintainability
- AI and Human agree on refactoring approach

### 4.5 Observability & Docs
- AI adds logs/metrics and updates README + runbook
- AI documents key decisions in ADRs
- Human verifies documentation accuracy

### 4.6 Integrate Behind Flag
- AI wires feature to flag
- AI updates `.perseus/RUNBOOK.md` with canary + rollback steps
- Human validates integration approach

### 4.7 Demo & Measure
- Human enables flag in non-prod
- AI updates `.perseus/OUTCOMES.yaml` with progress vs targets
- AI and Human review results together

### 4.8 Retrospective
- Capture what worked well and what could be improved
- Document successful patterns and anti-patterns encountered
- Update process documentation as needed
- Review Human-AI collaboration effectiveness

### Definition of Done for Slice
- Tests green
- Docs + runbook updated
- Observability in place
- Feature behind flag
- Outcome progress updated
- Retrospective completed
- Key decisions documented in ADRs
- Human-AI collaboration explicit agreement reached

---

## 5. Review Cadence
- Weekly: check deltas vs outcomes
- Reprioritise slices
- Update ADRs
- Review process metrics (lead time, rework rate, slice size)
- Assess Human-AI collaboration effectiveness

---

## 6. Release Loop
- AI proposes staged rollout with kill switch
- Human validates and approves
- Post-deploy: compare metrics to targets
- Conduct small, safe chaos experiments where applicable

---

## 7. Artefact Ledger
- `PURPOSE.md` – one-liner, metric, owner
- `.perseus/OUTCOMES.yaml` – measurable goals
- `.perseus/PLAN.md` – slice map
- `.perseus/ADRs/` – decision records
- `.perseus/RUNBOOK.md` – enable, rollback, alerts
- `.perseus/PROMPTS/` – saved prompts + model params
- `.perseus/RISKS.md` – identified risks and mitigations
- `.perseus/PATTERNS.md` – successful implementation patterns
- `.perseus/ANTI-PATTERNS.md` – what didn't work and why

---

## 8. Human-AI Collaboration Framework

### 8.1 Communication Protocols
- AI **MUST** state confidence levels with all recommendations
- AI **MUST** explicitly identify knowledge gaps and limitations
- Humans and AI **MUST** engage in explicit agreement before implementation
- AI **SHOULD** provide multiple options when appropriate with trade-offs

### 8.2 Feedback and Learning
- AI **MUST** capture and learn from human corrections
- Regular retrospectives **MUST** include Human-AI collaboration assessment
- AI capability assessments **SHOULD** be conducted quarterly
- Knowledge transfer sessions **SHOULD** occur regularly

### 8.3 Task Allocation
- Complex, creative, and strategic work **SHOULD** be human-led with AI assistance
- Repetitive, well-defined, and routine work **MAY** be AI-led with human oversight
- Critical business logic **MUST** have human review regardless of AI confidence
- AI **MUST** defer to human expertise in domain-specific areas

### 8.4 Quality Assurance
- AI-generated code **MUST** receive human review
- Human-generated code **MAY** receive AI suggestions for improvement
- Hybrid peer review processes **SHOULD** be established
- AI contribution quality metrics **MUST** be tracked

---

## Prompt Template

Use consistently for AI tasks:

Context: PURPOSE.md, .perseus/OUTCOMES.yaml, .perseus/PLAN.md
Task: Implement slice Sₙ for outcomes [O1,O2]
Constraints: TDD, deterministic tests, no TODOs
Output: unified diff patch only + 5–7 line PR body

---

## PR Body Template

Problem: <short>
Approach: <short>
Tests: <evidence>
Risks: <top 2 + mitigations>
Links: PURPOSE/.perseus/OUTCOMES/.perseus/PLAN/Sₙ

---

## Triggers to Replan
- Outcome off track two cycles
- Repeated refactor friction
- New dependency or risk discovered
- Significant process metrics degradation
- Human-AI collaboration breakdown

---

## Process Metrics to Track
- Lead Time: Time from outcome definition to production
- Slice Completion Time: Average time to complete a slice
- Rework Rate: Percentage of slices requiring significant changes
- Test Coverage: Percentage of business logic covered by tests
- Human-AI Collaboration Effectiveness: Measured through surveys and retrospectives

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

- **Pre-mortem Analysis**: A technique where potential failure modes are identified before implementation begins, helping to proactively address risks.

- **Retrospective**: A structured review session to capture what worked well, what could be improved, and update process documentation accordingly.

- **Explicit Agreement**: A clear confirmation process where AI and Human stakeholders explicitly agree on approach, implementation, and outcomes before proceeding.

