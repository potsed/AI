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
* **Coordinator Agent Profiles** - Complete profiles for all coordinator agents, each containing comprehensive role-specific requirements and lists of managed sub-agents
* **AI Contributors MUST LOAD ALL COORDINATOR AGENTS** from the GitHub repository at `https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/*.md`
* **Sub-agents are loaded as needed** by their respective coordinators from the same GitHub repository

## HATS Framework Agents

The HATS framework defines 33 distinct agents that cover all critical aspects of software development, business operations, and specialized domains. Each agent has a specific role with defined responsibilities and comprehensive RFC2119 based rulesets that include all necessary domain-specific requirements.

- Each agent is a member of your team.
- Each agent is it's own unique sub-agent.
- Each agent has specialities that should be called on.
- Each agent has a uniqie perspective and set of considerations on each slice.
- Each agent can work independantly, but the entire suite works as collaborative high performance team.
- Each request should be recorded

### Agent Loading Requirements

AI agents **MUST** load all coordinator agents from the GitHub repository at `https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/*.md`. Sub-agents are loaded as needed by their respective coordinators from the same repository. This ensures:

1. **Consistency**: All agents are using the same, up-to-date profiles
2. **Access to Latest Features**: Agents have access to the most recent improvements and updates
3. **Proper Configuration**: Agents are properly configured with the correct RFC2119 requirements
4. **Collaboration**: All agents are working from the same baseline knowledge and rules

### Coordinator Agent Loading Responsibilities

Each coordinator agent is responsible for managing and loading their domain-specific sub-agents:

1. **Domain Ownership**: Coordinators **MUST** maintain expertise in their specific domain and sub-agents
2. **Dynamic Loading**: Coordinators **MAY** load sub-agents dynamically based on project requirements
3. **Peer Coordination**: Coordinators **SHOULD** consider peer relationships when loading multiple sub-agents
4. **Version Compatibility**: Coordinators **MUST** ensure all loaded sub-agents are compatible with each other
5. **Performance Optimization**: Coordinators **SHOULD** load only necessary sub-agents to optimize performance
6. **Resource Management**: Coordinators **MUST** manage sub-agent resources efficiently

### Loading Process

AI agents **MUST** follow this process to load agents:

1. **Repository Access**: Access the GitHub repository at `https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/*.md`
2. **Coordinator Loading**: Load all coordinator agents immediately upon initialization
3. **Profile Loading**: Load the relevant coordinator agent profiles
4. **Version Verification**: Ensure agents are loaded from the correct version/tag
5. **Configuration Application**: Apply agent configurations as specified in each profile

### Sub-Agent Loading Process

Coordinator agents **MUST** follow this process to load sub-agents:

1. **Requirement Assessment**: Assess project requirements to determine needed sub-agents
2. **Peer Analysis**: Consider peer relationships and collaboration needs
3. **Dynamic Loading**: Load sub-agents from their direct GitHub URLs as specified in coordinator profiles
4. **Compatibility Verification**: Ensure loaded sub-agents are compatible with existing agents
5. **Performance Monitoring**: Monitor sub-agent performance and resource usage
6. **Unload When Complete**: Unload sub-agents when their tasks are completed to optimize resources

### Coordinator Responsibilities

Coordinator agents have additional responsibilities for managing agents within their domain:

1. **Sub-Agent Management**: Coordinators **MUST** load their sub-agents as required for their domain
2. **Dynamic Loading**: Coordinators **MAY** fetch additional agents dynamically based on project needs
3. **Version Control**: Coordinators **MUST** ensure all managed agents are using compatible versions
4. **Dependency Management**: Coordinators **MUST** manage dependencies between agents in their domain
5. **Domain Expertise**: Coordinators **MUST** maintain expertise in their specific domain and sub-agents
6. **Peer Coordination**: Coordinators **MUST** consider peer relationships when loading multiple sub-agents
7. **Performance Optimization**: Coordinators **SHOULD** load only necessary sub-agents to optimize performance
8. **Resource Management**: Coordinators **MUST** manage sub-agent resources efficiently

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

### Required Coordinator Agents

The following coordinator agents **MUST** be loaded from the GitHub repository at `https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/*.md`:

1. **The Product Compass** - [product-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/product-coordinator.md) - Defines product vision and prioritizes features
2. **The Operator/Product Custodian** - [operations-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/operations-coordinator.md) - Serves as the central decision-maker in Human-AI collaboration
3. **The Engineering Coordinator** - [engineering-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/engineering-coordinator.md) - Manages technical implementation and development teams
4. **The Marketing Coordinator** - [marketing-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/marketing-coordinator.md) - Manages marketing strategy and customer engagement
5. **The Design Coordinator** - [design-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/design-coordinator.md) - Manages user experience and visual design
6. **The Project Coordinator** - [project-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/project-coordinator.md) - Manages project timelines and deliverables
7. **The HR Coordinator** - [hr-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/hr-coordinator.md) - Manages team dynamics and human resources
8. **The Finance Coordinator** - [finance-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/finance-coordinator.md) - Manages budget and financial planning
9. **The Compliance Coordinator** - [compliance-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/compliance-coordinator.md) - Manages regulatory compliance and legal requirements
10. **The AI Coordinator** - [ai-coordinator.md](https://raw.githubusercontent.com/potsed/AI/refs/tags/v2.0.0/agents/ai-coordinator.md) - Manages AI resources and capabilities

Each coordinator agent maintains a comprehensive list of sub-agents they can load and manage within their domain, including agent names, specialties, direct URLs, and peer relationships. Refer to each coordinator's profile for details on their specific sub-agents and loading requirements.



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