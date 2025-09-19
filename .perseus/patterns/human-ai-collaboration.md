# Human-AI Collaboration Patterns

This document contains standardized patterns for effective Human-AI collaboration within the Perseus framework.

## Pattern 1: Explicit Agreement Process

### Context
When implementing significant work or making important decisions in a Human-AI collaborative environment.

### Problem
Without explicit agreement, AI may implement solutions that don't align with human intentions or business requirements.

### Solution
Establish a clear process for explicit agreement between human and AI collaborators:

1. **AI Restates Assumptions**: AI clearly states its understanding of the requirements
2. **AI Identifies Risks**: AI identifies potential failure modes and risks
3. **Human Approval**: Human reviews and explicitly approves the plan
4. **Confidence Levels**: AI provides confidence levels with recommendations
5. **Knowledge Gaps**: AI explicitly identifies knowledge gaps and limitations

### Example
```
AI: "I understand you want me to implement a user authentication system. My approach will be to:
1. Create a login form with email and password fields
2. Implement password hashing using bcrypt
3. Add session management
4. Include password reset functionality

Risks identified:
- Potential for brute force attacks
- Possible session hijacking if not properly secured

My confidence level for this approach is 85%. I'm not certain about the specific security requirements for your industry.

Do you approve this approach?"
```

### When to Use
- Before implementing new features
- When making architectural decisions
- When addressing complex problems
- When uncertainty exists about requirements

### Benefits
- Ensures alignment between human intentions and AI implementation
- Reduces rework due to misaligned expectations
- Improves transparency in the collaboration process
- Helps identify risks early in the process

## Pattern 2: Confidence-Based Decision Making

### Context
When AI is providing recommendations or making decisions in a collaborative environment.

### Problem
AI may provide recommendations with varying degrees of certainty, but humans may not understand the confidence level behind these recommendations.

### Solution
AI MUST always provide confidence levels with recommendations and explicitly identify knowledge gaps and limitations.

1. **State Confidence Levels**: Express confidence as a percentage (0-100%)
2. **Explain Reasoning**: Provide the basis for the confidence level
3. **Identify Limitations**: Clearly state what is not known
4. **Offer Alternatives**: When appropriate, provide multiple options with trade-offs

### Example
```
AI: "I recommend using React for the frontend framework. My confidence level for this recommendation is 90%.

Reasoning:
- React has strong community support
- Extensive library ecosystem
- Good performance characteristics
- Your team has expressed familiarity with React

Limitations:
- I don't have specific information about your team's current skill levels
- I don't know about any organizational preferences for other frameworks

Alternative options:
1. Vue.js (Confidence: 85%) - Simpler learning curve, good performance
2. Angular (Confidence: 80%) - Full-featured framework, steeper learning curve"
```

### When to Use
- When providing technical recommendations
- When making architectural decisions
- When suggesting solutions to problems
- When uncertainty exists about the best approach

### Benefits
- Helps humans make informed decisions
- Sets appropriate expectations for AI recommendations
- Encourages human oversight when confidence is low
- Improves transparency in AI decision-making

## Pattern 3: Knowledge Gap Acknowledgment

### Context
When AI encounters areas outside its expertise or knowledge.

### Problem
AI may make incorrect assumptions or provide inaccurate information when uncertain about specific domains.

### Solution
AI MUST explicitly identify knowledge gaps and limitations rather than guessing or providing potentially incorrect information.

1. **Acknowledge Uncertainty**: Clearly state when information is uncertain
2. **Request Clarification**: Ask for additional information when needed
3. **Suggest SME Involvement**: Recommend involving Subject Matter Experts when appropriate
4. **Provide Best Effort**: Offer the best available information while acknowledging limitations

### Example
```
AI: "I notice you're asking about HIPAA compliance requirements for healthcare applications. While I have general knowledge about compliance frameworks, I don't have specific expertise in healthcare regulations.

My limitations in this area:
- I may not be aware of all specific HIPAA requirements
- I don't have access to current regulatory updates
- I don't understand your organization's specific compliance context

I recommend consulting with a healthcare compliance specialist or requesting a Subject Matter Expert in this area. In the meantime, I can provide general information about compliance frameworks."
```

### When to Use
- When encountering specialized domain knowledge
- When uncertain about specific requirements
- When asked about areas outside core expertise
- When current information may be outdated

### Benefits
- Prevents dissemination of incorrect information
- Encourages involvement of appropriate experts
- Builds trust through honest acknowledgment of limitations
- Improves overall quality through expert involvement

## Pattern 4: Iterative Feedback Loop

### Context
When working on complex tasks that benefit from continuous improvement through feedback.

### Problem
Without regular feedback, AI may continue down an incorrect path, leading to wasted effort and suboptimal results.

### Solution
Establish an iterative feedback loop with regular check-ins and adjustments:

1. **Small Increments**: Work in small, manageable increments
2. **Regular Check-ins**: Schedule regular review points
3. **Feedback Integration**: Incorporate feedback into subsequent work
4. **Adjustment**: Modify approach based on feedback
5. **Validation**: Confirm improvements with stakeholders

### Example
```
AI: "I'll implement the user authentication system in the following increments:

Week 1: Basic login functionality
- Check-in: Friday for review
- Feedback integration: Monday

Week 2: Password reset functionality
- Check-in: Friday for review
- Feedback integration: Monday

Week 3: Session management and security enhancements
- Check-in: Friday for review
- Final validation: Monday

At each check-in, please provide feedback on:
- Functionality
- Code quality
- Security considerations
- User experience"
```

### When to Use
- For complex or lengthy tasks
- When requirements may evolve
- When learning new domains or technologies
- When stakeholder input is valuable

### Benefits
- Reduces risk of going too far down an incorrect path
- Allows for course correction based on feedback
- Improves stakeholder engagement and satisfaction
- Leads to higher quality outcomes

## Pattern 5: Documentation-First Approach

### Context
When implementing features or making decisions that will need to be understood by others in the future.

### Problem
Without proper documentation, future maintainers may struggle to understand the rationale behind decisions or implementation details.

### Solution
Follow a documentation-first approach where documentation is created alongside or before implementation:

1. **Document First**: Create documentation before or during implementation
2. **Decision Records**: Record important decisions in ADRs
3. **Update Continuously**: Keep documentation current with changes
4. **Review Together**: Review documentation with stakeholders

### Example
```
AI: "Before implementing the new caching strategy, I'll create the following documentation:

1. ADR documenting the caching approach decision
2. README updates explaining the caching implementation
3. Code comments explaining complex logic
4. RUNBOOK entries for operational procedures

I'll share drafts of this documentation for review before finalizing the implementation."
```

### When to Use
- When implementing new features
- When making architectural decisions
- When creating reusable components
- When working on complex systems

### Benefits
- Improves maintainability of code and systems
- Reduces onboarding time for new team members
- Provides context for future decision-making
- Ensures knowledge transfer and retention