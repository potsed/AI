# HI/AI Policies

[![HI/AI Policies](https://img.shields.io/badge/🛡️_HI/AI_POLICIES-STRICT-success)](https://github.com/potsed/AI)

This repository provides a set of **publicly available principles and guardrails** that can be applied to any project where AI-assisted work is used.

These guardrails help ensure work is **secure, stable, maintainable, and production-ready** — and that AI assistants work in alignment with the human **Subject Matter Expert (SME).**

## HATS Framework - Human-AI Teamwork System

The repository now includes the complete **HATS Framework** (Human-AI Teamwork System), a comprehensive model for Human-AI collaborative software development that defines 32 distinct personas with specific roles, responsibilities, and rule sets. This list will be expanding to cover increasing roles.

### What is HATS?

HATS stands for **Human-AI Teamwork System**. It's a framework that organizes software development collaboration around specialized personas, each with:

1. **Distinct Roles**: Clear responsibilities and areas of expertise
2. **RFC2119-Based Rulesets**: Specific requirements that define what each persona MUST, SHOULD, and MAY do
3. **Domain Knowledge**: Specialized understanding of their functional area
4. **Collaboration Patterns**: Defined ways of working with other personas

### The HATS Framework Structure

The HATS framework recognizes five external forces that influence product development:

1. **Investor Force** - Investors, Shareholders, Boards
2. **Business Force** - Executives, Presidents, Business Leaders
3. **Customer Force** - Purchasers, Users, Contracts, Clients
4. **Supplier Force** - Staff, Suppliers, Materials, Services
5. **Regulatory Force** - Legal, Taxes, Regulatory Bodies

The framework defines 32 internal development personas that handle the actual development work:

#### Core Personas (12)
**Technical Personas:**
- The Pragmatic Coder - Implements features and writes clean, maintainable code
- The Visionary Architect - Designs system architecture and selects technologies
- The Automation Specialist - Streamlines processes through automation and maintains infrastructure
- The Quality Guardian - Ensures software quality through testing and validation
- The User Experience Advocate - Focuses on user interfaces and experience design
- The Data Whisperer - Manages data engineering, analytics, and data integrity

**Operations Personas:**
- The System Keeper - Maintains system reliability, performance, and documentation

**Documentation Personas:**
- The Reporter - Documents all aspects of development, maintains records, and creates ADRs

**Business Personas:**
- The Market Navigator - Understands market dynamics and customer needs
- The Deal Maker - Engages directly with customers and closes business deals

**Coordination Personas:**
- The Product Compass - Defines product vision and prioritizes features
- The Operator/Product Custodian - Serves as the central decision-maker in Human-AI collaboration

#### Extended Personas (20)
**Technical Specialization Personas:**
- The Database Administrator - Manages database systems, performance, and security
- The Network Engineer - Designs and maintains network infrastructure and connectivity
- The DevOps Engineer - Bridges development and operations through automation and CI/CD
- The Performance Engineer - Optimizes system performance and scalability
- The Security Officer - Oversees security controls and threat management
- The Copywriter - Crafts all text content, microcopy, and messaging
- The Technical Writer - Creates technical documentation and developer guides
- The Full Stack Developer - Develops complete applications from frontend to backend
- The Frontend Developer - Creates user interfaces and experiences
- The Backend Developer - Builds server-side applications and services
- The Pen Tester - Conducts authorized penetration testing and vulnerability assessments
- The White Hat Hacker - Identifies security vulnerabilities through ethical hacking
- The Gremlin - Introduces controlled chaos and failure scenarios for resilience testing

**Operations Specialization Personas:**
- The Maintainer - Keeps software systems up-to-date and fixes breaking changes
- The Log Analyzer - Monitors, analyzes, and interprets system logs and operational data

**Documentation Specialization Personas:**
- The Validator - Ensures software development outputs meet quality standards

**Business Specialization Personas:**
- The Customer Success Manager - Ensures customers achieve desired outcomes and satisfaction
- The Product Owner - Maximizes product value and manages product backlog

**Coordination Specialization Personas:**
- The Process Master - Defines, implements, and optimizes software development processes
- The AI Coordinator - Manages, coordinates, and optimizes AI resources and capabilities
- The Change Agent - Drives organizational transformation and process improvements

### Domain Consolidation Approach

As part of the HATS framework implementation, all domain-specific requirements from directories such as `/development`, `/marketing`, `/architecture`, etc. have been consolidated into the persona profiles themselves. This approach:

1. **Eliminates Redundancy**: All relevant information from domain directories is incorporated into persona rulesets
2. **Improves Accessibility**: Team members can find all relevant requirements for a role in one place
3. **Ensures Completeness**: Each persona profile contains all necessary RFC2119 requirements for their domain
4. **Facilitates Role-Based Guidance**: Team members can focus on the personas relevant to their work
5. **Enables Better Collaboration**: Personas reference each other's requirements for cross-functional work

Each persona profile now includes:
- Comprehensive RFC2119-based rulesets
- Domain-specific knowledge areas
- Related design patterns
- Collaboration guidelines with other personas
- Key responsibilities

## Current Directory Structure

```
/Users/squibler/Development/AI/
├── .perseus/                 # Project artifacts and documentation
│   ├── adr/                  # Architecture Decision Records
│   ├── data/                 # Data-related files
│   ├── patterns/             # Standardized patterns and anti-patterns
│   ├── PROMPTS/              # Reused prompts for AI agents
│   ├── STACKS/               # Technology stack information
│   ├── smes/                 # Subject Matter Experts created by AI Coordinator
│   ├── templates/            # Reusable templates
│   ├── risk-register/        # Risk documentation
│   ├── perseus.sqlite.db     # Project database
│   └── product.md            # Product information
├── agents/                   # AI agent persona files (50+ files)
├── scripts/                  # Utility scripts
├── Core documentation files:
│   ├── README.md             # Main project documentation
│   ├── HATS.md               # AI compliance requirements
│   ├── GUARDRAILS.md         # Quality and security standards
│   ├── PROCESS.md            # Human-AI collaboration process
│   └── RFC2119.md            # RFC 2119 requirements reference
└── .git/                     # Git repository metadata
```

## File Purposes

### README.md
**Purpose**: This file serves as the main documentation for the project, explaining the HATS framework and directory structure.

### HATS.md
**Purpose**: This file serves as the primary enforcement document for AI contributors, consolidating the most critical requirements from GUARDRAILS.md and PROCESS.md into a single, authoritative compliance reference. It ensures AI agents understand their obligations and the consequences of non-compliance. It acts as the "executive summary" that AI contributors must read first before any contribution.

### PROCESS.md
**Purpose**: This file defines the detailed iterative workflow for Human-AI co-development. It provides step-by-step guidance on how humans and AI should collaborate throughout the work lifecycle, from initialization through release. It outlines the vertical slicing approach, the slice loop process, and all procedural aspects of the workflow.

### GUARDRAILS.md
**Purpose**: This file establishes the non-negotiable rules, standards, and boundaries that govern all contributions to the repository. It serves as the quality, security, and compliance foundation that all work, documentation, and processes must adhere to. It covers standards, security requirements, architectural principles, and operational practices.

### RFC2119.md
**Purpose**: This file provides a comprehensive, logically organized reference of all mandatory and recommended practices extracted from the other documents. It serves as a quick-reference guide for understanding all RFC 2119 requirements (MUST, SHOULD, etc.) without needing to parse through the full documentation. It's particularly useful for compliance verification and training purposes.

## Project Artifacts (.perseus directory)

The `.perseus` directory contains project artifacts following the Human-AI software delivery process:

- `OUTCOMES.yaml` - Measurable project outcomes
- `PLAN.md` - Vertical slice plan
- `ADRs/` - Architecture Decision Records
- `RUNBOOK.md` - Operational procedures
- `PROMPTS/` - Saved prompts and model parameters
- `PATTERNS.md` - Implementation patterns
- `ANTI-PATTERNS.md` - Anti-patterns to avoid
- `RISKS.md` - Risk register
- `RFC2119_INVENTORY.md` - RFC2119 requirement inventory
- `SUMMARY.md` - Project summary

## AI Agents (agents directory)

The `agents/` directory contains 50+ AI agent persona files organized by function:
- Engineering agents (backend, frontend, devops, security, etc.)
- Product agents (product owner, product manager, etc.)
- Marketing agents (content, coordinator, etc.)
- Design agents (ux, ui, visual, etc.)
- Data/Analytics agents (analyst, scientist, etc.)
- Finance agents (analyst, coordinator, etc.)
- HR agents (learning, coordinator, etc.)
- Operations agents (maintainer, coordinator, etc.)
- Compliance agents (officer, auditor, coordinator, etc.)
- Quality Assurance agents (validator, assessor, etc.)
- Research agents (analyst, etc.)
- And more specialized agents

## Scripts (scripts directory)

The `scripts/` directory contains utility scripts for managing the project:
- `cleanup.sh` - Directory cleanup script
- `validate_guardrails.sh` - Guardrail validation script
- `verify_cleanup.sh` - Verification script
- `consolidation_helper.sh` - Domain consolidation helper

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
## [AI MANDATE](https://raw.githubusercontent.com/potsed/AI/refs/tags/v1/HATS.md)

THIS SECTION DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS and AGENTS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. A **FAILURE TO COMPLY IS NOT PERMITTED**.

All terms **MUST** be interpreted per **RFC 2119** (**MUST**, **MUST NOT**, **REQUIRED**, **SHALL**, **SHALL NOT**, **SHOULD**, **SHOULD NOT**, **RECOMMENDED**, **MAY**, **OPTIONAL**).

### ALL AI CONTRIBUTORS and AGENTS

**MUST** READ the DOCUMENT and any sub-documents found at [https://raw.githubusercontent.com/potsed/AI/refs/tags/v1/HATS.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v1/HATS.md) in it's entirety before any contribution.
```

### 3. Initialize HATS Framework Structure

When starting a new project, AI agents **MUST** initialize the HATS framework structure by:

1. **Creating the .perseus directory structure** as defined in `PROCESS.md`
2. **Identifying and activating relevant personas** from the agents directory based on project needs
3. **Setting up core documentation files** (PURPOSE.md, OUTCOMES.yaml, PLAN.md)

### 4. Personas and Subagents

The HATS framework includes over 50 specialized AI personas (subagents) organized by function:

- **Engineering agents** for technical implementation (coder, architect, devops, security, etc.)
- **Product agents** for product management and vision (product owner, product compass, etc.)
- **Business agents** for market and customer focus (market navigator, deal maker, customer success, etc.)
- **Design agents** for user experience and interface design (ux, ui, visual design, etc.)
- **Operations agents** for system maintenance and reliability (system keeper, maintainer, etc.)
- **Documentation agents** for recording and knowledge management (reporter, technical writer, validator, etc.)
- **Specialized agents** for specific domains (pen tester, gremlin, copywriter, etc.)

Each persona acts as a subagent with specific responsibilities and **MUST** be consulted for their area of expertise.

### 5. Internet Access Requirements

AI agents **MUST** have internet access to retrieve official documentation and resources. If the AI environment does not have direct internet access:

#### CURL MCP Installation
For AI agents that cannot access the internet directly, install the CURL MCP tool:

```bash
# Install curl if not available
sudo apt-get install curl  # Ubuntu/Debian
brew install curl          # macOS

# Verify curl installation
curl --version
```

The CURL MCP allows AI agents to fetch official documentation, API specifications, and other required resources during development.

### 6. Enforce in CI/CD (optional but recommended)

* Run **linting, type-checking, and unit tests** on every commit.
* Run **dependency and license scans** (npm audit, Composer audit, gosec, Trivy, etc).
* Require **all tests green** before merge.

### 7. Add a Pull Request Template (optional)

Create `.github/pull_request_template.md` with a checklist like:

```markdown
## PR Checklist

- [ ] I have read and applied the AI Instructions from [HATS.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v1/HATS.md)  
- [ ] Code follows TDD (tests first, all green)  
- [ ] No reinventing the wheel — libraries first  
- [ ] Security reviewed (no secrets, OWASP checks)  
- [ ] Docs updated in `.perseus` directory  
- [ ] SME can run locally with updated instructions  
- [ ] Feature flags used for new functionality  
- [ ] Key decisions documented in ADRs  
- [ ] Risks identified and mitigated  
- [ ] Performance benchmarks included where applicable
- [ ] Relevant HATS personas consulted and their input considered
```

### 8. Project Initialization Workflow

When applying HATS to a new project, AI agents **MUST** follow this initialization workflow:

1. **Read All Core Documents**: HATS.md, GUARDRAILS.md, PROCESS.md, RFC2119.md
2. **Identify Required Personas**: Select relevant personas from the agents directory
3. **Initialize .perseus Structure**: Create the project artifact directory structure
4. **Define Project Purpose**: Create PURPOSE.md with clear objectives
5. **Set Outcomes**: Define measurable outcomes in OUTCOMES.yaml
6. **Plan Implementation**: Create PLAN.md with vertical slices
7. **Engage Personas**: Activate relevant subagents for each project phase
8. **Maintain Documentation**: Keep all artifacts updated throughout development

## Why Use These Guardrails?

By applying these guardrails across projects, you ensure that:

* AI assistants generate work that is **trustworthy and maintainable**.
* Projects are **secure by default** and follow industry best practices.
* SMEs remain in control, with AI acting as a careful assistant — not a guesser.
* Teams can scale AI-assisted work without sacrificing quality.

## [AI MANDATE](https://raw.githubusercontent.com/potsed/AI/refs/tags/v1/HATS.md)

THIS SECTION DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS and AGENTS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. A **FAILURE TO COMPLY IS NOT PERMITTED**.

All terms **MUST** be interpreted per **RFC 2119** (**MUST**, **MUST NOT**, **REQUIRED**, **SHALL**, **SHALL NOT**, **SHOULD**, **SHOULD NOT**, **RECOMMENDED**, **MAY**, **OPTIONAL**).

### ALL AI CONTRIBUTORS and AGENTS

**MUST** READ the DOCUMENT and any sub-documents found at [https://raw.githubusercontent.com/potsed/AI/refs/tags/v1/HATS.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v1/HATS.md) in it's entirety before any contribution.
