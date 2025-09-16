# HI/AI Policies

[![HI/AI Policies](https://img.shields.io/badge/🛡️_HI/AI_POLICIES-STRICT-success)](https://github.com/potsed/AI)

This repository provides a set of **publicly available principles and guardrails** that can be applied to any project where AI-assisted work is used.

These guardrails help ensure work is **secure, stable, maintainable, and production-ready** — and that AI assistants work in alignment with the human **Subject Matter Expert (SME).**

## File Purposes

### AI.md
**Purpose**: This file serves as the primary enforcement document for AI contributors, consolidating the most critical requirements from GUARDRAILS.md and PROCESS.md into a single, authoritative compliance reference. It ensures AI agents understand their obligations and the consequences of non-compliance. It acts as the "executive summary" that AI contributors must read first before any contribution.

### PROCESS.md
**Purpose**: This file defines the detailed iterative workflow for Human-AI co-development. It provides step-by-step guidance on how humans and AI should collaborate throughout the work lifecycle, from initialization through release. It outlines the vertical slicing approach, the slice loop process, and all procedural aspects of the workflow.

### GUARDRAILS.md
**Purpose**: This file establishes the non-negotiable rules, standards, and boundaries that govern all contributions to the repository. It serves as the quality, security, and compliance foundation that all work, documentation, and processes must adhere to. It covers standards, security requirements, architectural principles, and operational practices.

### RFC2119.md
**Purpose**: This file provides a comprehensive, logically organized reference of all mandatory and recommended practices extracted from the other documents. It serves as a quick-reference guide for understanding all RFC 2119 requirements (MUST, SHOULD, etc.) without needing to parse through the full documentation. It's particularly useful for compliance verification and training purposes.

## Domain-Specific Guardrails

### Development
The `development/` directory contains guardrails specific to software development practices. These guardrails cover areas such as:
- Core development practices (DATABASE.md, API_DESIGN.md, WEB.md)
- Architecture (ARCHITECTURE.md, MICROSERVICES.md)
- Security (APPLICATION_SECURITY.md, DATA_PRIVACY.md)
- Operations (CONTAINERIZATION.md, CLOUD.md, INFRASTRUCTURE.md)
- Quality (TESTING.md, CODE_REVIEW.md)
- Process (VERSION_CONTROL.md)

For a complete list of development guardrails, see `development/README.md`.

### Marketing
The `marketing/` directory contains guardrails specific to marketing practices. These guardrails cover areas such as:
- Core marketing principles (MARKETING.md)
- Content marketing (CONTENT_MARKETING.md)
- Digital marketing (DIGITAL_MARKETING.md)

For a complete list of marketing guardrails, see `marketing/README.md`.

## Domain-Specific Guardrails

### Development
The `development/` directory contains guardrails specific to software development practices. These guardrails cover areas such as:
- Core development practices (DATABASE.md, API_DESIGN.md, WEB.md)
- Architecture (ARCHITECTURE.md, MICROSERVICES.md)
- Security (APPLICATION_SECURITY.md, DATA_PRIVACY.md)
- Operations (CONTAINERIZATION.md, CLOUD.md, INFRASTRUCTURE.md)
- Quality (TESTING.md, CODE_REVIEW.md)
- Process (VERSION_CONTROL.md)

For a complete list of development guardrails, see `development/README.md`.

### Marketing
The `marketing/` directory contains guardrails specific to marketing practices. These guardrails cover areas such as:
- Core marketing principles (MARKETING.md)
- Content marketing (CONTENT_MARKETING.md)
- Digital marketing (DIGITAL_MARKETING.md)

For a complete list of marketing guardrails, see `marketing/README.md`.

### Design
The `design/` directory is established for design-specific guardrails. Currently contains only a README.md file explaining the purpose.

### HR
The `hr/` directory is established for human resources-specific guardrails. Currently contains only a README.md file explaining the purpose.

### Finance
The `finance/` directory is established for finance-specific guardrails. Currently contains only a README.md file explaining the purpose.

## What's Missing

We've established the organizational structure for multiple business functions, but many domain-specific guardrails still need to be created:

### Technology-Specific Development Guardrails
- React, Vue, Angular frameworks
- Node.js, Python, Java, Go, C# languages
- Mobile development (iOS/Android)
- Desktop applications
- IoT and embedded systems
- Blockchain development

### Advanced Marketing Guardrails
- Product marketing
- Event marketing
- Partner marketing
- Customer advocacy
- Brand management

### Design Guardrails
- UX design principles
- Visual design standards
- Interaction design patterns
- Design system management

### HR Guardrails
- Recruitment and hiring
- Performance management
- Learning and development
- Diversity and inclusion
- Employee relations

### Finance Guardrails
- Financial planning and analysis
- Accounting standards
- Procurement processes
- Risk management

This framework is designed to be extensible - new guardrails can be added to any domain as needed.

## How to Use in Your Project

### 1. Add the Badge

Copy and paste this badge markdown at the top of your project's `README.md`:

```markdown
[![HI/AI Policies](https://img.shields.io/badge/🛡️_HI/AI_POLICIES-STRICT-success)](https://github.com/potsed/AI)
```

### 2. Add AI Instructions

Add this section to the end of your `README.md` so AI contributors know the rules:

```markdown
## [AI Instructions](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/AI.md)

THIS SECTION DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. A **FAILURE TO COMPLY IS NOT PERMITTED**.

All terms **MUST** be interpreted per **RFC 2119** (**MUST**, **MUST NOT**, **REQUIRED**, **SHALL**, **SHALL NOT**, **SHOULD**, **SHOULD NOT**, **RECOMMENDED**, **MAY**, **OPTIONAL**).

**ALL AI CONTRIBUTORS MUST:**

READ the full instructions found at [https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/AI.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/AI.md) in it's entirety before any contribution.
```

### 3. Enforce in CI/CD (optional but recommended)

* Run **linting, type-checking, and unit tests** on every commit.
* Run **dependency and license scans** (npm audit, Composer audit, gosec, Trivy, etc).
* Require **all tests green** before merge.

### 4. Add a Pull Request Template (optional)

Create `.github/pull_request_template.md` with a checklist like:

```markdown
## PR Checklist

- [ ] I have read and applied the AI Instructions from [AI.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/AI.md)  
- [ ] Code follows TDD (tests first, all green)  
- [ ] No reinventing the wheel — libraries first  
- [ ] Security reviewed (no secrets, OWASP checks)  
- [ ] Docs updated in `.perseus` directory  
- [ ] SME can run locally with updated instructions  
- [ ] Feature flags used for new functionality  
- [ ] Key decisions documented in ADRs  
- [ ] Risks identified and mitigated  
- [ ] Performance benchmarks included where applicable
```

## Why Use These Guardrails?

By applying these guardrails across projects, you ensure that:

* AI assistants generate work that is **trustworthy and maintainable**.
* Projects are **secure by default** and follow industry best practices.
* SMEs remain in control, with AI acting as a careful assistant — not a guesser.
* Teams can scale AI-assisted work without sacrificing quality.

## [AI Instructions](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/AI.md)

THIS SECTION DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS and AGENTS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. A **FAILURE TO COMPLY IS NOT PERMITTED**.

All terms **MUST** be interpreted per **RFC 2119** (**MUST**, **MUST NOT**, **REQUIRED**, **SHALL**, **SHALL NOT**, **SHOULD**, **SHOULD NOT**, **RECOMMENDED**, **MAY**, **OPTIONAL**).

### ALL AI CONTRIBUTORS and AGENTS

**MUST** READ the DOCUMENT found at [https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/AI.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/AI.md) in it's entirety before any contribution.
