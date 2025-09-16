# CODE REVIEW Guardrails

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## Review Process

- **MUST** create pull requests for all changes
- **MUST** have at least one approval before merging
- **MUST** address all review comments before merging
- **MUST** run all tests successfully before requesting review
- **MUST** keep pull requests small and focused
- **SHOULD** assign appropriate reviewers based on expertise
- **MUST NOT** merge pull requests with failing checks

## Review Standards

- **MUST** verify code follows project coding standards
- **MUST** check for security vulnerabilities
- **MUST** validate error handling and edge cases
- **MUST** ensure code is testable and tested
- **MUST** verify documentation is updated
- **SHOULD** check for performance implications
- **MUST NOT** approve code that doesn't meet quality standards

## Code Quality Assessment

- **MUST** evaluate code readability and maintainability
- **MUST** check for code duplication
- **MUST** verify appropriate use of design patterns
- **MUST** assess complexity and cyclomatic complexity
- **MUST** ensure proper separation of concerns
- **SHOULD** look for opportunities for improvement
- **MUST NOT** ignore code smells or anti-patterns

## Security Review

- **MUST** check for common security vulnerabilities
- **MUST** verify input validation and sanitization
- **MUST** ensure proper authentication and authorization
- **MUST** check for sensitive data exposure
- **MUST** validate dependency security
- **SHOULD** use automated security scanning tools
- **MUST** verify encryption implementation

## Testing Review

- **MUST** verify adequate test coverage
- **MUST** check test quality and clarity
- **MUST** ensure tests are deterministic
- **MUST** validate edge case coverage
- **MUST** verify test data appropriateness
- **SHOULD** suggest additional test scenarios
- **MUST** confirm tests pass consistently

## Documentation Review

- **MUST** verify code is self-documenting
- **MUST** check for appropriate comments
- **MUST** ensure documentation is updated
- **MUST** validate API documentation accuracy
- **MUST** confirm README updates
- **SHOULD** suggest documentation improvements
- **MUST** verify inline documentation clarity

## Performance Review

- **MUST** identify potential performance bottlenecks
- **MUST** check for resource leaks
- **MUST** validate algorithm efficiency
- **MUST** ensure appropriate caching usage
- **MUST** verify database query efficiency
- **SHOULD** suggest performance optimizations
- **MUST** consider scalability implications

## Review Etiquette

- **MUST** provide constructive feedback
- **MUST** explain reasoning for suggestions
- **MUST** respect authors and their work
- **MUST** focus on code, not individuals
- **MUST** be responsive to questions and discussions
- **SHOULD** acknowledge good practices and improvements
- **MUST NOT** use review process for personal preferences

## Review Timing

- **MUST** respond to review requests within 24 hours
- **MUST** provide initial feedback within 48 hours
- **MUST** complete reviews within 72 hours
- **MUST** prioritize urgent or blocking reviews
- **MUST** communicate delays proactively
- **SHOULD** conduct reviews in timely manner
- **MUST** respect team review capacity