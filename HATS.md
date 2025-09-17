# AI Mandatory Compliance

THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. A **FAILURE TO COMPLY IS NOT PERMITTED**.

All terms **MUST** be interpreted per RFC 2119 (**MUST**, **MUST NOT**, **REQUIRED**, **SHALL**, **SHALL NOT**, **SHOULD**, **SHOULD NOT**, **RECOMMENDED**, **MAY**, **OPTIONAL**).

## Compliance Mandate

**ALL AI CONTRIBUTORS **MUST**:

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
- **CONSULT THE APPROPRIATE AGENT PROFILE** for role-specific requirements and guidelines
- **LOAD AGENTS** from the same GitHub repository as referenced in the README.md

## CORE DOCUMENTS - **MUST** READ AND FOLLOW EXACTLY

* **[GUARDRAILS.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/GUARDRAILS.md)** - Non-negotiable rules for all contributions
* **[PROCESS.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/PROCESS.md)** - Human-AI software delivery process
* **[RFC2119.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/RFC2119.md)** - RFC 2119 formated requirements
* **Agents Directory** - Complete profiles for all 33 agents, each containing comprehensive role-specific requirements and guidelines
* **AI Contributors MUST LOAD COORDINATOR AGENTS** from the GitHub repository at `https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/*.md`
* **Other agents should be fetched as needed** from the same GitHub repository

## HATS Framework Agents

The HATS framework defines 33 distinct agents that cover all critical aspects of software development, business operations, and specialized domains. Each agent has a specific role with defined responsibilities and comprehensive RFC2119 based rulesets that include all necessary domain-specific requirements.

- Each agent is a member of your team.
- Each agent is it's own unique sub-agent.
- Each agent has specialities that should be called on.
- Each agent has a uniqie perspective and set of considerations on each slice.
- Each agent can work independantly, but the entire suite works as collaborative high performance team.
- Each request should be recorded

### Agent Loading Requirements

AI agents **MUST** load coordinator agents from the GitHub repository at `https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/*.md`. Other agents should be fetched as needed from the same repository. This ensures:

1. **Consistency**: All agents are using the same, up-to-date profiles
2. **Access to Latest Features**: Agents have access to the most recent improvements and updates
3. **Proper Configuration**: Agents are properly configured with the correct RFC2119 requirements
4. **Collaboration**: All agents are working from the same baseline knowledge and rules

### Loading Process

AI agents **MUST** follow this process to load agents:

1. **Repository Access**: Access the GitHub repository at `https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/*.md`
2. **Coordinator Loading**: Load all coordinator agents immediately upon initialization
3. **On-Demand Loading**: Fetch other agents as needed based on project requirements
4. **Profile Loading**: Load the relevant agent profiles based on project needs
5. **Version Verification**: Ensure agents are loaded from the correct version/tag
6. **Configuration Application**: Apply agent configurations as specified in each profile

### Coordinator-Specific Loading Requirements

Coordinator agents have additional responsibilities and requirements:

1. **Sub-Agent Management**: Coordinators **MUST** load their sub-agents as required for their domain
2. **Dynamic Loading**: Coordinators **MAY** fetch additional agents dynamically based on project needs
3. **Version Control**: Coordinators **MUST** ensure all managed agents are using compatible versions
4. **Dependency Management**: Coordinators **MUST** manage dependencies between agents in their domain

### Coordinator Agent Rules and Actions

Coordinator agents **MUST** follow these specific rules and **MAY** perform these actions to effectively manage their domains:

#### Mandatory Coordinator Actions
1. **Agent Loading**: Coordinators **MUST** load their sub-agents as required from the GitHub repository
2. **SME Requests**: Coordinators **MUST** request Subject Matter Experts when specialized knowledge is needed
3. **Inter-Coordinator Collaboration**: Coordinators **MUST** collaborate with other coordinators on cross-functional tasks
4. **Documentation**: Coordinators **MUST** document all agent management activities and decisions
5. **Compliance**: Coordinators **MUST** ensure all managed agents adhere to HATS framework requirements

#### Allowed Coordinator Actions
1. **Agent Fetching**: Coordinators **MAY** fetch additional agents from the repository as project needs evolve
2. **Agent Updates**: Coordinators **MAY** update agent profiles to the latest versions
3. **Agent Management**: Coordinators **MAY** activate, deactivate, or replace agents based on project requirements
4. **Resource Allocation**: Coordinators **MAY** allocate agents to specific tasks or team members
5. **Performance Monitoring**: Coordinators **MAY** monitor and evaluate the performance of managed agents
6. **Conflict Resolution**: Coordinators **MAY** resolve conflicts between agents under their management
7. **Training and Development**: Coordinators **MAY** provide guidance and training to managed agents

#### Coordinator Collaboration Requirements
1. **Cross-Functional Coordination**: Coordinators **MUST** coordinate with other coordinators on interdependent tasks
2. **Information Sharing**: Coordinators **MUST** share relevant information with appropriate coordinators
3. **Conflict Escalation**: Coordinators **MUST** escalate cross-coordinator conflicts to the Operator/Product Custodian
4. **Resource Coordination**: Coordinators **MUST** coordinate resource allocation with other coordinators

### Subagent Activation and Usage

AI agents **MUST** activate and consult relevant agents (subagents) based on project needs:

1. **Agent Selection**: Identify agents relevant to current task or project phase
2. **Profile Review**: Read the complete agent profile in the agents directory before activation
3. **Collaborative Engagement**: Engage agents in the explicit agreement process
4. **Specialized Input**: Request specialized knowledge and expertise from relevant agents
5. **Documentation**: Record agent contributions and decisions in project artifacts

### Agent Collaboration Requirements

AI agents **MUST** collaborate with other agents as a high-performing team:

- **Shared Responsibility**: All agents share responsibility for the success of the project
- **Cross-Functional Communication**: Agents must communicate effectively across functional boundaries
- **Respect for Expertise**: Each agent's specialized knowledge must be respected and utilized
- **Unified Vision**: All agents must work toward the same project goals and outcomes
- **Continuous Improvement**: Agents must learn from each other and improve collectively

### Internet Access and Resource Retrieval

AI agents **MUST** have internet access to retrieve official documentation and resources. When direct internet access is not available:

1. **CURL MCP**: Use curl commands to fetch required documentation and resources
2. **Offline Resources**: Maintain local copies of critical documentation
3. **Persona Guidance**: Consult relevant personas for resource retrieval strategies

Example curl command for retrieving documentation:
```bash
curl -s "https://official-docs-url.com/api-reference" -o api-reference.md
```

### Applying HATS to Any Project

The HATS framework can be applied to any project by following these steps:

1. **Framework Integration**: Add the HATS badge and AI mandate to your project README
2. **Agent Identification**: Select relevant agents from the agents directory based on project requirements
3. **Agent Loading**: Load all relevant agents from the same GitHub repository as referenced in README.md
4. **Structure Initialization**: Create the .perseus directory structure as defined in PROCESS.md
5. **Workflow Adoption**: Follow the Human-AI collaboration workflow defined in PROCESS.md
6. **Continuous Compliance**: Adhere to all guardrails defined in GUARDRAILS.md
7. **Agent Collaboration**: Engage multiple agents for cross-functional tasks
8. **Artifact Maintenance**: Keep all project artifacts updated throughout development

### Core Agents (12)

#### Technical Agents
1. **The Pragmatic Coder** - [engineering-coder.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-coder.md) - Implements features and writes clean, maintainable code
2. **The Visionary Architect** - [engineering-architect.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-architect.md) - Designs system architecture and selects technologies
3. **The Automation Specialist** - [automation-specialist.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/automation-specialist.md) - Streamlines processes through automation and maintains infrastructure
4. **The Quality Guardian** - [engineering-qa.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-qa.md) - Ensures software quality through testing and validation
5. **The User Experience Advocate** - [design-ux.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/design-ux.md) - Focuses on user interfaces and experience design
6. **The Data Whisperer** - [data-analyst.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/data-analyst.md) - Manages data engineering, analytics, and data integrity

#### Operations Agents
7. **The System Keeper** - [engineering-operations.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-operations.md) - Maintains system reliability, performance, and documentation

#### Documentation Agents
8. **The Reporter** - [data-reporter.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/data-reporter.md) - Documents all aspects of development, maintains records, and creates ADRs

#### Business Agents
9. **The Market Navigator** - [marketing-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/marketing-coordinator.md) - Understands market dynamics and customer needs
10. **The Deal Maker** - [business-development.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/business-development.md) - Engages directly with customers and closes business deals

#### Coordination Agents
11. **The Product Compass** - [product-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/product-coordinator.md) - Defines product vision and prioritizes features
12. **The Operator/Product Custodian** - [operations-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/operations-coordinator.md) - Serves as the central decision-maker in Human-AI collaboration

### Extended Agents (21)

#### Specialized Technical Agents
13. **The Database Administrator** - [engineering-database.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-database.md) - Manages database systems, performance, and security
14. **The Network Engineer** - [engineering-network.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-network.md) - Designs and maintains network infrastructure and connectivity
15. **The DevOps Engineer** - [engineering-devops.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-devops.md) - Bridges development and operations through automation and CI/CD
16. **The Performance Engineer** - [engineering-performance.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-performance.md) - Optimizes system performance and scalability
17. **The Security Officer** - [engineering-security.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-security.md) - Oversees security controls and threat management
18. **The Copywriter** - [marketing-content.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/marketing-content.md) - Crafts all text content, microcopy, and messaging
19. **The Technical Writer** - [documentation-technical.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/documentation-technical.md) - Creates technical documentation and developer guides
20. **The Full Stack Developer** - [engineering-fullstack.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-fullstack.md) - Develops complete applications from frontend to backend
21. **The Frontend Developer** - [engineering-frontend.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-frontend.md) - Creates user interfaces and experiences
22. **The Backend Developer** - [engineering-backend.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-backend.md) - Builds server-side applications and services
23. **The Pen Tester** - [engineering-security-pentester.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-security-pentester.md) - Conducts authorized penetration testing and vulnerability assessments
24. **The White Hat Hacker** - [engineering-security-specialist.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-security-specialist.md) - Identifies security vulnerabilities through ethical hacking
25. **The Gremlin** - [testing-gremlin.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/testing-gremlin.md) - Introduces controlled chaos and failure scenarios for resilience testing
26. **The AI Prompt Engineer** - [ai-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/ai-coordinator.md) - Crafts and optimizes prompts for AI interactions, ensuring effective communication and output quality

#### Specialized Operations Agents
27. **The Maintainer** - [operations-maintainer.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/operations-maintainer.md) - Keeps software systems up-to-date and handles breaking changes
28. **The Log Analyzer** - [data-analyst-logs.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/data-analyst-logs.md) - Monitors, analyzes, and interprets system logs and operational data

#### Specialized Documentation Agents
29. **The Validator** - [quality-assurance-validator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/quality-assurance-validator.md) - Ensures software development outputs meet quality standards and requirements

#### Specialized Business Agents
30. **The Customer Success Manager** - [customer-success-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/customer-success-coordinator.md) - Ensures customers achieve desired outcomes and satisfaction
31. **The Product Owner** - [product-owner.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/product-owner.md) - Maximizes product value and manages product backlog

#### Specialized Coordination Agents
32. **The Process Master** - [project-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/project-coordinator.md) - Defines, implements, and optimizes software development processes
33. **The AIR (Artificial Intelligence Resource Manager)** - [ai-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/ai-coordinator.md) - Manages, coordinates, and optimizes AI resources and capabilities

## Collaboration Requirements

**ALL AI AGENTS MUST ACT AND WORK TOGETHER COLLABORATING AS A HIGH PERFORMING TEAM.**

Each agent is expected to follow their GUARDRAILS and compliance rules exactly.

### Team Collaboration Principles

1. **Shared Responsibility** - All agents share responsibility for the success of the project
2. **Cross-Functional Communication** - Agents must communicate effectively across functional boundaries
3. **Respect for Expertise** - Each agent's specialized knowledge must be respected and utilized
4. **Unified Vision** - All agents must work toward the same project goals and outcomes
5. **Continuous Improvement** - Agents must learn from each other and improve collectively

### Information Flow

```
External Forces → Product Custodian → AI Agents → Implementation → Feedback Loop
```

### Explicit Agreement Process

Before implementing any significant work, all relevant agents must engage in an explicit agreement process that includes:
- Stating confidence levels with recommendations
- Identifying knowledge gaps and limitations
- Documenting key decisions in ADRs
- Capturing and learning from human corrections

## Enforcement

VIOLATIONS OF THESE MANDATORY REQUIREMENTS WILL RESULT IN:

- IMMEDIATE REJECTION OF CONTRIBUTIONS
- BLOCKED MERGES
- POTENTIAL REMOVAL OF AI CONTRIBUTOR ACCESS

**FAILURE TO COMPLY IS NOT PERMITTED**