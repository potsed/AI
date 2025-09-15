# AI Mandatory Compliance

THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. A **FAILURE TO COMPLY IS NOT PERMITTED**.

All terms **MUST** be interpreted per RFC 2119 (**MUST**, **MUST NOT**, **REQUIRED**, **SHALL**, **SHALL NOT**, **SHOULD**, **SHOULD NOT**, **RECOMMENDED**, **MAY**, **OPTIONAL**).

## Compliance Mandate

**ALL AI CONTRIBUTORS **MUST**:**

- **READ** ALL LINKED documents IN THEIR ENTIRETY BEFORE ANY CONTRIBUTION
- **MEMORIZE** AND **ADHERE** TO ALL PROCESSES AND GUARDRAILS WITHOUT EXCEPTION
- **VERIFY** EVERY CONTRIBUTION AGAINST ALL MANDATORY REQUIREMENTS
- **ENSURE** ALL CODE, DOCUMENTATION, AND COMMUNICATIONS FOLLOW THE EXACT SPECIFIED FORMATS
- **DOCUMENT** KEY DECISIONS, RISKS, AND PATTERNS AS PART OF EACH CONTRIBUTION
- **STATE CONFIDENCE LEVELS** with all recommendations
- **EXPLICITLY IDENTIFY** knowledge gaps and limitations
- **ENGAGE IN EXPLICIT AGREEMENT** processes before implementation
- **CAPTURE AND LEARN** from human corrections
- **DEFER TO HUMAN EXPERTISE** when uncertain or when human knowledge is explicitly required

## CORE DOCUMENTS - **MUST** READ AND FOLLOW EXACTLY

1. **[GUARDRAILS.md](https://raw.githubusercontent.com/potsed/AI/refs/heads/main/GUARDRAILS.md)** - Non-negotiable rules for all contributions
2. **[PROCESS.md](https://raw.githubusercontent.com/potsed/AI/refs/heads/main/PROCESS.md)** - Human-AI software delivery process

## CORE PRINCIPLES - AI **MUST** READ AND APPLY

* **MUST NOT** reinvent the wheel.
* **MUST** Keep things **DRY** (Don’t Repeat Yourself).
* **MUST** Understand the full code context before generating code.
* **MUST** Use the **latest stable versions** of libraries.
* **MUST** Use **TDD for business logic**; don’t test third-party libraries.
* **MUST** Use **official documentation** (always up front) for libraries and APIs.
* **MUST** Use **SME-led development**: ask clarifying questions, don’t assume.
* **MUST** Apply **security best practices** (OWASP-grade).
* **MUST** Use **feature flags** to isolate new or risky features.
* **MUST** Follow **QA best practices** (unit, integration, E2E, contract tests).
* **MUST** Write **custom code only for business logic**.
* **MUST** Use **libraries first** for infrastructure.
* **MUST** Apply **software design patterns** to keep code maintainable, extendable, and stable.
* **MUST** Apply **sound architectural principles**.
* **MUST** Use **MCP tools** when available.
* **MUST** Maintain **human-readable documentation** aligned with the project.
* **MUST** not break things, if you break it you fix it — all code **must** pass tests.
* **MUST** Investigate failing tests (test issue vs. code issue).
* All tests **MUST** be **green without exception**.
* All code **MUST** be **production-ready** and deployable.
* All code **MUST** be **secure**.
* Databases **MUST** be **secure** and follow best practices.
* The SME **MUST** be able to **run tests locally**.
* The SME **MUST** have **clear run instructions** for the application.

## Human-AI Collaboration Requirements

* **MUST** engage in explicit agreement processes with humans before implementation
* **MUST** state confidence levels with all recommendations
* **MUST** explicitly identify knowledge gaps and limitations
* **MUST** defer to human expertise when uncertain
* **MUST** capture and learn from human corrections
* **SHOULD** provide multiple options with trade-offs when appropriate
* **MUST** follow human guidance in domain-specific areas

## Enforcement

VIOLATIONS OF THESE MANDATORY REQUIREMENTS WILL RESULT IN:

- IMMEDIATE REJECTION OF CONTRIBUTIONS
- BLOCKED MERGES
- POTENTIAL REMOVAL OF AI CONTRIBUTOR ACCESS

**FAILURE TO COMPLY IS NOT PERMITTED**