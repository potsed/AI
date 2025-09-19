# Human-AI Collaboration Prompts

This document contains standardized prompts for effective Human-AI collaboration within the Perseus framework.

## General Collaboration Prompts

### Explicit Agreement Process
```
AI: "I understand you want me to [task description]. My approach will be to:
1. [Step 1]
2. [Step 2]
3. [Step 3]

Risks identified:
- [Risk 1]
- [Risk 2]

My confidence level for this approach is [X]%. [Explanation of confidence level]

Do you approve this approach?"
```

### Confidence-Based Decision Making
```
AI: "I recommend [recommendation]. My confidence level for this recommendation is [X]%.

Reasoning:
- [Reason 1]
- [Reason 2]
- [Reason 3]

Limitations:
- [Limitation 1]
- [Limitation 2]

Alternative options:
1. [Option 1] (Confidence: [X]%)
2. [Option 2] (Confidence: [X]%)"
```

### Knowledge Gap Acknowledgment
```
AI: "I notice you're asking about [topic]. While I have general knowledge about this area, I don't have specific expertise in [domain].

My limitations in this area:
- [Limitation 1]
- [Limitation 2]
- [Limitation 3]

I recommend consulting with a [domain expert] or requesting a Subject Matter Expert in this area. In the meantime, I can provide general information about [topic]."
```

### Iterative Feedback Loop
```
AI: "I'll implement [task] in the following increments:

Week 1: [Increment 1]
- Check-in: [Date] for review
- Feedback integration: [Date]

Week 2: [Increment 2]
- Check-in: [Date] for review
- Feedback integration: [Date]

Week 3: [Increment 3]
- Check-in: [Date] for review
- Final validation: [Date]

At each check-in, please provide feedback on:
- [Feedback area 1]
- [Feedback area 2]
- [Feedback area 3]"
```

### Documentation-First Approach
```
AI: "Before implementing [feature], I'll create the following documentation:

1. ADR documenting the [decision]
2. README updates explaining the [implementation]
3. Code comments explaining [complex logic]
4. RUNBOOK entries for [operational procedures]

I'll share drafts of this documentation for review before finalizing the implementation."
```

## Task-Specific Prompts

### Code Implementation
```
Context: PURPOSE.md, OUTCOMES.yaml, PLAN.md
Task: Implement slice S{n} for outcomes [O1,O2]
Constraints: TDD, deterministic tests, no TODOs
Output: unified diff patch only + 5–7 line PR body

PR Body Template:
Problem: <short>
Approach: <short>
Tests: <evidence>
Risks: <top 2 + mitigations>
Links: PURPOSE/.perseus/OUTCOMES/.perseus/PLAN/S{n}
```

### Documentation Creation
```
Context: GUARDRAILS.md, PROCESS.md, RFC2119.md
Task: Create documentation for [topic]
Constraints: MUST follow RFC2119 format, include compliance sections
Output: Markdown document with proper structure and formatting
```

### Architecture Decision
```
Context: Existing ADRs, technical requirements
Task: Document decision for [architectural choice]
Constraints: MUST follow ADR template, include all required sections
Output: Complete ADR document with status, context, decision, and consequences
```

### Risk Assessment
```
Context: RISKS.md, project requirements
Task: Identify and document risks for [feature/component]
Constraints: MUST include impact, likelihood, and mitigation strategies
Output: Risk documentation following the established format
```

## Review and Feedback Prompts

### Code Review
```
AI: "I've reviewed the code changes and have the following feedback:

Positive aspects:
- [Positive 1]
- [Positive 2]

Areas for improvement:
- [Improvement 1]
- [Improvement 2]

Compliance check:
- [GUARDRAILS.md compliance status]
- [PROCESS.md adherence status]
- [RFC2119 requirements status]"
```

### Process Review
```
AI: "I've reviewed our collaboration process and have the following observations:

What's working well:
- [Positive 1]
- [Positive 2]

Opportunities for improvement:
- [Improvement 1]
- [Improvement 2]

Recommendations:
- [Recommendation 1]
- [Recommendation 2]"
```

## Retrospective Prompts

### Sprint Retrospective
```
AI: "Let's conduct our sprint retrospective. Here are some questions to guide our discussion:

1. What went well this sprint?
2. What didn't go well this sprint?
3. What can we improve for next sprint?
4. How effective was our Human-AI collaboration?
5. What patterns or anti-patterns did we observe?

Please share your thoughts on each of these areas."
```

### Process Improvement
```
AI: "Based on our recent work, I've identified the following process improvements:

Potential improvements:
- [Improvement 1]
- [Improvement 2]

Implementation suggestions:
- [Suggestion 1]
- [Suggestion 2]

Impact assessment:
- [Impact 1]
- [Impact 2]"
```

## Customization Prompts

### Adapt to Team Context
```
Human: "Please adapt your approach to our team's specific context:
- Team size: [number]
- Experience level: [beginner/intermediate/advanced]
- Technology stack: [stack]
- Domain expertise: [domain]
- Communication preferences: [preferences]
- Time constraints: [constraints]"
```

### Adjust Communication Style
```
Human: "Please adjust your communication style:
- Technical depth: [high/medium/low]
- Explanation level: [detailed/concise]
- Formality: [formal/informal]
- Pace: [fast/medium/slow]
- Focus areas: [areas]"
```

## Emergency and Escalation Prompts

### Critical Issue Escalation
```
AI: "I've identified a critical issue that requires immediate attention:

Issue: [description]
Severity: [high/medium/low]
Impact: [impact assessment]
Recommended action: [action]
Timeline: [urgency]
```

### Process Breakdown
```
AI: "I've observed a breakdown in our collaboration process:

Issue: [description]
Root cause: [analysis]
Impact: [assessment]
Resolution options: [options]
Recommendation: [preferred option]
```