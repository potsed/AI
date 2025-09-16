# GUARDRAILS BY FUNCTIONAL ROLE

This document organizes all guardrails by functional roles and concerns for easier navigation and application.

## DEVELOPMENT (Core coding practices)
- Libraries first principle
- ATOMIC code principles (file/function size, complexity limits)
- Custom code only for business logic
- Input validation at all boundaries
- Explicit error handling
- Never trust input from any source
- Official documentation first approach

## CODE_QUALITY (Technical excellence)
- Language-specific style guides
- Full utilization of type systems
- Linting and static analysis requirements
- Language-specific formatting tools
- Idiomatic usage of languages and frameworks
- Cyclomatic complexity limits
- Dead code removal

## QA (Testing and quality assurance)
- TDD for business logic (failing test first)
- Test coverage requirements (80% line, 70% branch)
- Deterministic tests with no live external calls
- Flaky test management (48h fix rule)
- Unit test performance limits (≤ 3 minutes)
- Third-party library mocking/stubbing
- Integration, E2E, and contract testing

## UX (User experience design)
- Accessibility compliance (WCAG AA minimum)
- Internationalization requirements
- Performance benchmarks for core user journeys
- Mobile-responsive design patterns
- User feedback collection mechanisms
- Usability testing requirements

## UI (User interface implementation)
- Component atomicity and reusability
- State management patterns
- Styling consistency guidelines
- Cross-browser compatibility
- Progressive enhancement principles
- UI testing strategies

## DEVOPS (Deployment and operations)
- Deterministic builds (pinned toolchains/lockfiles)
- Feature flags and kill switches
- Canary deployment strategies
- Health/readiness endpoints
- Observability (logs, metrics, tracing)
- Backup and restore procedures
- Rollback procedures

## PRODUCT_MANAGEMENT (Strategic and planning)
- Vertical slice planning (3-7 day slices)
- Outcome-driven development
- Acceptance criteria definition
- Feature flag management
- Success metric tracking
- Regular review cadence
- Replanning triggers

## SECURITY (Protection and compliance)
- Secrets management (no secrets in repo)
- Encryption in transit and at rest
- Authentication/OAuth/OIDC standards
- Authorization at point of action
- Supply chain security (SBOM, vulnerability scanning)
- Idempotency for external operations
- OWASP compliance

## DATABASE (Data persistence and management)
- Schema design normalization
- Indexing strategies
- Query optimization
- Connection pooling
- Migration strategies
- Backup and recovery
- Data integrity constraints

## PERFORMANCE (Speed and efficiency)
- Response time budgets
- Resource usage limits
- Caching strategies
- Load testing requirements
- Bottleneck identification
- Scalability patterns
- Monitoring performance metrics

## ARCHITECTURE (System design principles)
- Separation of concerns
- Dependency boundaries
- Service decomposition
- Communication patterns
- Data flow management
- Technology selection criteria
- Evolution strategies

## DATA_PRIVACY (Personal information protection)
- Data minimization
- Purpose limitation
- Consent management
- Right to erasure
- Data portability
- Privacy impact assessments
- Regulatory compliance (GDPR, CCPA)

## API_DESIGN (Interface standards)
- REST/GraphQL conventions
- Versioning strategies
- Documentation requirements
- Rate limiting
- Error response formats
- Authentication patterns
- Backward compatibility

## INFRASTRUCTURE (Hosting and environment)
- Environment parity
- Configuration management
- Network security
- Resource allocation
- Monitoring and alerting
- Incident response
- Cost optimization

## MAINTENANCE (Long-term sustainability)
- Technical debt management
- Refactoring cadence
- Deprecation policies
- Update procedures
- Runbook maintenance
- Knowledge transfer
- System retirement

## COMPLIANCE (Regulatory and legal)
- Industry-specific regulations
- Audit trail requirements
- License compliance
- Accessibility standards
- Security certifications
- Documentation retention
- Reporting requirements

## TESTING (Testing strategies and practices)
- Test pyramid implementation
- Test design and structure
- Test data management
- Test environment management
- Test automation
- Test coverage and quality
- Test maintenance
- Test performance
- Test tools and frameworks

## VERSION_CONTROL (Version control practices)
- Branching strategy
- Commit message conventions
- Code review process
- Merge strategies
- Repository organization
- Tagging and release management
- History management
- Collaboration practices

## CONTAINERIZATION (Containerization practices)
- Dockerfile best practices
- Image security
- Image optimization
- Container runtime configuration
- Environment variables and configuration
- Networking and service discovery
- Storage and persistence
- Monitoring and logging
- Image management

## CLOUD (Cloud-native development)
- Cloud-native principles
- Resource management
- Cost optimization
- Security and compliance
- Networking
- Data management
- Monitoring and observability
- High availability and disaster recovery
- Service integration
- Vendor management

## MICROSERVICES (Microservices architecture)
- Service design
- Communication patterns
- Data management
- Service discovery and configuration
- Security
- Observability
- Deployment and operations
- Fault tolerance
- Testing
- Service evolution

## APPLICATION_SECURITY (Application security)
- Authentication
- Authorization
- Input validation
- Data protection
- Secure configuration
- Error handling and logging
- Cryptography
- Security testing
- Secure development practices
- Incident response

## DATA_ENGINEERING (Data engineering practices)
- Data pipeline design
- ETL/ELT processes
- Data quality
- Data storage and management
- Performance optimization
- Data security and privacy
- Monitoring and observability
- Data governance
- Testing and validation
- Deployment and operations

## WEB (Web frontend development)
- HTML best practices
- CSS and styling
- JavaScript implementation
- Performance optimization
- Accessibility (a11y)
- Security
- Responsive design
- Cross-browser compatibility
- Testing
- SEO and meta tags

## CODE_REVIEW (Code review practices)
- Review process
- Review standards
- Code quality assessment
- Security review
- Testing review
- Documentation review
- Performance review
- Review etiquette
- Review timing