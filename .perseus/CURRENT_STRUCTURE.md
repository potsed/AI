# Current AI Directory Structure

This document describes the current correct structure of the AI directory.

## Directory Structure

```
/Users/squibler/Development/AI/
├── .perseus/                 # Project artifacts and documentation
│   ├── adr/                  # Architecture Decision Records
│   ├── data/                 # Data-related files
│   │   └── README.md         # Data directory documentation
│   ├── patterns/             # Standardized patterns and anti-patterns
│   │   ├── SOFTWARE.md       # Software design patterns
│   │   ├── UX.md             # User experience patterns
│   │   ├── UI.md             # User interface patterns
│   │   ├── ARCHITECTURE.md   # Architecture patterns
│   │   ├── ANTI-PATTERNS/    # Anti-patterns directory
│   │   └── README.md         # Patterns directory documentation
│   ├── PROMPTS/              # Reused prompts for AI agents
│   │   └── README.md         # PROMPTS directory documentation
│   ├── STACKS/               # Technology stack information
│   │   └── README.md         # STACKS directory documentation
│   ├── smes/                 # Subject Matter Experts created by AI Coordinator
│   │   └── README.md         # SMEs directory documentation
│   ├── templates/            # Reusable templates
│   │   ├── social-media/     # Social media templates
│   │   │   ├── LINKEDIN.md   # LinkedIn template
│   │   │   └── README.md     # Social media templates documentation
│   │   ├── adr.md            # ADR template
│   │   ├── risk.md           # Risk template
│   │   └── README.md         # Templates directory documentation
│   ├── risk-register/        # Risk documentation
│   │   └── README.md         # Risk register documentation
│   ├── perseus.sqlite.db     # Project database
│   ├── product.md            # Product information
│   ├── OUTCOMES.yaml         # Measurable project outcomes
│   ├── PLAN.md               # Vertical slice plan
│   ├── RUNBOOK.md            # Operational procedures
│   ├── PATTERNS.md           # Implementation patterns
│   ├── ANTI-PATTERNS.md      # Anti-patterns to avoid
│   ├── RFC2119_INVENTORY.md  # RFC2119 requirement inventory
│   ├── RISKS.md              # Risk register
│   ├── SUMMARY.md            # Project summary
│   ├── STRUCTURE.md          # .perseus directory structure documentation
│   └── consolidation_helper.sh
├── agents/                   # AI agent persona files (50+ files)
│   ├── engineering-*.md      # Engineering agents
│   ├── product-*.md          # Product agents
│   ├── marketing-*.md        # Marketing agents
│   ├── design-*.md           # Design agents
│   ├── data-*.md             # Data/Analytics agents
│   ├── finance-*.md          # Finance agents
│   ├── hr-*.md               # HR agents
│   ├── operations-*.md       # Operations agents
│   ├── compliance-*.md       # Compliance agents
│   ├── quality-*.md          # Quality Assurance agents
│   └── README.md             # Agent directory documentation
├── scripts/                  # Utility scripts
│   ├── cleanup.sh            # Directory cleanup script
│   ├── validate_guardrails.sh # Guardrail validation script
│   ├── verify_cleanup.sh     # Verification script
│   ├── consolidation_helper.sh # Domain consolidation helper
│   └── README.md             # Scripts directory documentation
├── Core documentation files:
│   ├── README.md             # Main project documentation
│   ├── HATS.md               # AI compliance requirements
│   ├── GUARDRAILS.md         # Quality and security standards
│   ├── PROCESS.md            # Human-AI collaboration process
│   └── RFC2119.md            # RFC 2119 requirements reference
└── .git/                     # Git repository metadata
```

## Key Components

### 1. Core Documentation Files
These are the essential documentation files in the root directory:
- `README.md` - Main project documentation
- `HATS.md` - AI compliance requirements
- `GUARDRAILS.md` - Quality and security standards
- `PROCESS.md` - Human-AI collaboration process
- `RFC2119.md` - RFC 2119 requirements reference

### 2. .perseus Directory
Contains project artifacts following the Human-AI software delivery process:
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

### 3. Agents Directory
Contains 50+ AI agent persona files organized by function:
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

### 4. Scripts Directory
Contains utility scripts for managing the project:
- `cleanup.sh` - Directory cleanup script
- `validate_guardrails.sh` - Guardrail validation script
- `verify_cleanup.sh` - Verification script
- `consolidation_helper.sh` - Domain consolidation helper

## Structure Principles

This structure follows the HATS framework principles:
1. **Clear Organization**: Files are grouped by purpose and function
2. **Separation of Concerns**: Core documentation, project artifacts, agents, and scripts are separated
3. **Accessibility**: Team members can easily find relevant files
4. **Maintainability**: Structure supports easy maintenance and updates
5. **Scalability**: Structure can accommodate growth and new components