# Project Template

This template provides a starting point for new projects using the Perseus framework.

## Project Information

### Project Name
[Project Name]

### Project Description
[Brief description of the project]

### Project Goals
- [Goal 1]
- [Goal 2]
- [Goal 3]

### Project Owner
[Name]

### Project Start Date
[YYYY-MM-DD]

### Project Target Date
[YYYY-MM-DD]

## Outcomes

```yaml
- id: O1
  statement: "When <context>, <user> can <verb>."
  metric: <name>
  baseline: <value>
  target: <value by YYYY-MM-DD>
  owner: <name>
  progress: 0%
```

## Team

### Human Team Members
- [Name] - [Role]

### AI Team Members
- [Agent Name] - [Role]

## Technology Stack

### Frontend
- [Technology]

### Backend
- [Technology]

### Database
- [Technology]

### Infrastructure
- [Technology]

## Directory Structure

```
[project-name]/
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
│   ├── OUTCOMES.yaml         # Measurable project outcomes
│   ├── PLAN.md               # Vertical slice plan
│   ├── RUNBOOK.md            # Operational procedures
│   ├── PATTERNS.md           # Implementation patterns
│   ├── ANTI-PATTERNS.md      # Anti-patterns to avoid
│   ├── RFC2119_INVENTORY.md  # RFC2119 requirement inventory
│   ├── RISKS.md              # Risk register
│   ├── SUMMARY.md            # Project summary
│   └── README.md             # Directory documentation
├── src/                      # Source code
├── tests/                    # Test files
├── docs/                     # Documentation
├── scripts/                  # Utility scripts
├── README.md                 # Main project documentation
└── .git/                     # Git repository metadata
```

## Process

### Human-AI Collaboration Workflow
1. [Step 1]
2. [Step 2]
3. [Step 3]

### Code Review Process
1. [Step 1]
2. [Step 2]
3. [Step 3]

### Deployment Process
1. [Step 1]
2. [Step 2]
3. [Step 3]

## Risks

| Risk ID | Title | Impact | Likelihood | Mitigation |
|---------|-------|--------|------------|------------|
| RISK-001 | [Risk Title] | [High/Medium/Low] | [High/Medium/Low] | [Mitigation Strategy] |

## Metrics

### Key Performance Indicators
- [KPI 1]
- [KPI 2]
- [KPI 3]

### Quality Metrics
- [Metric 1]
- [Metric 2]
- [Metric 3]

## References

- [Perseus Framework Documentation](https://github.com/potsed/AI)
- [HATS Framework](https://github.com/potsed/AI/blob/main/HATS.md)
- [GUARDRAILS](https://github.com/potsed/AI/blob/main/GUARDRAILS.md)
- [PROCESS](https://github.com/potsed/AI/blob/main/PROCESS.md)