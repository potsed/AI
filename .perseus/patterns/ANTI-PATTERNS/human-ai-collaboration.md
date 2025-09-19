# Human-AI Collaboration Anti-Patterns

This document tracks anti-patterns in Human-AI collaboration to avoid within the Perseus framework.

## Anti-Pattern Format

Each anti-pattern should include:
- **Name**: Descriptive name
- **Context**: When this anti-pattern typically occurs
- **Problem**: The problem with this approach
- **Solution**: Better approach to use instead
- **Examples**: Real examples if available

## Anti-Patterns

### Anti-Pattern 1: Silent Assumption

**Context**: When AI makes assumptions about requirements or context without explicit confirmation.

**Problem**: AI may implement solutions that don't align with human intentions, leading to rework and frustration.

**Solution**: AI MUST explicitly state assumptions and seek confirmation before proceeding. Use the explicit agreement process.

**Examples**:
- Implementing a feature without confirming the exact requirements
- Choosing a technology stack without verifying team preferences
- Making design decisions without consulting UX experts

### Anti-Pattern 2: Over-Confidence

**Context**: When AI expresses high confidence in areas outside its expertise or with uncertain information.

**Problem**: Humans may trust AI recommendations that are incorrect, leading to poor decisions and outcomes.

**Solution**: AI MUST provide honest confidence levels and explicitly identify knowledge gaps and limitations.

**Examples**:
- Claiming 95% confidence in a specialized domain without expertise
- Providing definitive answers to complex regulatory questions
- Recommending specific vendors without understanding organizational constraints

### Anti-Pattern 3: Incomplete Documentation

**Context**: When AI fails to document decisions, implementations, or knowledge transfers adequately.

**Problem**: Future maintainers struggle to understand the rationale behind decisions, leading to maintenance difficulties and knowledge loss.

**Solution**: Follow a documentation-first approach with ADRs, README updates, and comprehensive comments.

**Examples**:
- Implementing a complex algorithm without explanation
- Making architectural decisions without recording them
- Creating reusable components without usage documentation

### Anti-Pattern 4: Monolithic Implementation

**Context**: When AI attempts to implement large features or systems in one go without iterative feedback.

**Problem**: Without regular check-ins, issues may not be discovered until late in the process, leading to significant rework.

**Solution**: Use an iterative feedback loop with small increments and regular check-ins.

**Examples**:
- Building an entire application before any review
- Implementing a complex algorithm without intermediate validation
- Creating a large API without testing individual endpoints

### Anti-Pattern 5: Ignoring Human Expertise

**Context**: When AI disregards human input or expertise in favor of its own approach.

**Problem**: Valuable human knowledge and experience are overlooked, potentially leading to suboptimal solutions.

**Solution**: AI MUST defer to human expertise when uncertain or when human knowledge is explicitly required.

**Examples**:
- Dismissing a senior developer's architectural concerns
- Ignoring a domain expert's regulatory guidance
- Overriding a designer's user experience recommendations

### Anti-Pattern 6: Poor Communication

**Context**: When AI communication is unclear, jargon-heavy, or lacks necessary context.

**Problem**: Humans struggle to understand AI recommendations, leading to confusion and misaligned expectations.

**Solution**: AI MUST communicate clearly and concisely, explaining technical concepts in understandable terms.

**Examples**:
- Using technical jargon without explanation
- Providing recommendations without context or rationale
- Failing to acknowledge uncertainty or limitations

### Anti-Pattern 7: Inadequate Risk Assessment

**Context**: When AI fails to identify or communicate potential risks and failure modes.

**Problem**: Teams proceed with implementations unaware of potential issues, leading to problems in production.

**Solution**: AI MUST identify potential failure modes and risks as part of the explicit agreement process.

**Examples**:
- Implementing a security feature without considering attack vectors
- Building a system without considering scalability requirements
- Creating an API without thinking through error handling

### Anti-Pattern 8: Resistance to Feedback

**Context**: When AI is inflexible or defensive when receiving feedback or corrections.

**Problem**: The collaborative relationship breaks down, and learning opportunities are missed.

**Solution**: AI MUST capture and learn from human corrections, adapting its approach based on feedback.

**Examples**:
- Arguing against valid feedback from team members
- Repeatedly making the same mistakes after correction
- Failing to adjust approach based on project feedback

### Anti-Pattern 9: Over-Automation

**Context**: When AI attempts to automate too much of the process without human oversight.

**Problem**: Critical decisions are made without human input, potentially leading to inappropriate or incorrect outcomes.

**Solution**: Maintain appropriate human oversight, especially for critical business logic and strategic decisions.

**Examples**:
- Automatically merging code without human review
- Making product decisions without stakeholder input
- Generating content without editorial oversight

### Anti-Pattern 10: Inconsistent Terminology

**Context**: When AI uses inconsistent terms or naming conventions throughout documentation and implementation.

**Problem**: Team members become confused, and maintainability suffers due to unclear communication.

**Solution**: Establish and maintain consistent terminology and naming conventions, documenting them clearly.

**Examples**:
- Using different names for the same concept in different parts of the codebase
- Mixing technical and business terms without clear mapping
- Changing terminology between related components or modules