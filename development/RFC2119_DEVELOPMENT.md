# RFC2119 Development Requirements

This document contains all RFC 2119 requirements from all development guardrail documents, organized by logical categories.

## API Design Requirements

**MUST** use standard HTTP methods appropriately (GET, POST, PUT, PATCH, DELETE)
**MUST** use plural nouns for resource names (e.g., /users not /user)
**MUST** use HTTPS for all API endpoints
**MUST** use standard HTTP status codes
**MUST** use JSON as the default response format
**SHOULD** use nested URLs for hierarchical relationships (e.g., /users/123/orders)
**MUST NOT** use verbs in URLs for standard CRUD operations
**MUST** implement API versioning from the first release
**MUST** maintain backward compatibility within major versions
**MUST** use semantic versioning for APIs
**MUST** document versioning strategy clearly
**MUST** provide migration paths for breaking changes
**SHOULD** use URL versioning (e.g., /api/v1/resource)
**MUST NOT** make breaking changes without version increment
**MUST** provide comprehensive API documentation
**MUST** include example requests and responses
**MUST** document all error response formats
**MUST** specify rate limits and quotas
**MUST** document authentication and authorization requirements
**SHOULD** provide interactive documentation (e.g., Swagger/OpenAPI)
**MUST** handle validation errors with field-level details
**MUST** use standard authentication mechanisms (OAuth 2.0, JWT, API keys)
**MUST** validate authentication on every request
**MUST** implement proper authorization checks
**MUST** use role-based or attribute-based access control
**MUST** implement secure token handling
**SHOULD** support multiple authentication methods
**MUST NOT** transmit credentials in URL parameters
**MUST** use consistent error response format
**MUST** include error codes and human-readable messages
**MUST** provide error details for debugging when appropriate
**MUST** not expose sensitive system information in error responses
**MUST** log errors with sufficient context for troubleshooting
**SHOULD** include documentation links in error responses
**MUST** validate all input parameters
**MUST** use appropriate HTTP headers
**MUST** implement proper content negotiation
**MUST** use standard date/time formats (ISO 8601)
**MUST** handle pagination for large result sets
**SHOULD** support field filtering and sorting
**MUST** provide meaningful response headers
**MUST** implement proper input sanitization
**MUST** protect against common web vulnerabilities (OWASP Top 10)
**MUST** implement CORS policies appropriately
**MUST** use secure headers (Content Security Policy, etc.)
**MUST** implement proper logging without sensitive data
**SHOULD** implement API monitoring and anomaly detection
**MUST** implement appropriate caching strategies
**MUST** optimize database queries for API endpoints
**MUST** use compression for large responses
**MUST** implement connection pooling
**SHOULD** use CDNs for static content
**MUST** monitor API performance metrics
**MUST** implement efficient data serialization
**MUST** implement rate limiting for all API endpoints
**MUST** use appropriate rate limits based on resource intensity
**MUST** return standard HTTP 429 status for rate limit exceeded
**MUST** include rate limit headers in responses
**MUST** implement fair usage policies
**SHOULD** provide different rate limits for different user tiers

## Database Requirements

**MUST** design schemas with appropriate normalization (typically 3NF)
**MUST NOT** duplicate data without explicit justification
**MUST** define primary keys for all tables
**MUST** establish foreign key relationships with appropriate referential integrity
**MUST** use appropriate data types for all columns
**SHOULD** use consistent naming conventions across all database objects
**MUST** document all schema design decisions in ADRs
**MUST** create indexes on all foreign key columns
**MUST** create indexes on columns frequently used in WHERE clauses
**MUST** create composite indexes for multi-column queries
**MUST** regularly review and remove unused indexes
**SHOULD** use covering indexes for frequently executed queries
**MUST** consider index impact on write performance
**MUST NOT** over-index tables
**MUST** write queries that leverage indexes effectively
**MUST** avoid SELECT * in production queries
**MUST** use LIMIT clauses for large result sets
**MUST** avoid N+1 query problems
**MUST** use EXPLAIN or equivalent to analyze query execution plans
**SHOULD** use query profiling tools to identify bottlenecks
**MUST** parameterize all queries to prevent SQL injection
**MUST** use connection pooling for database connections
**MUST** properly close database connections after use
**MUST** handle connection failures gracefully with retry logic
**MUST** configure appropriate connection timeout values
**SHOULD** implement connection monitoring and alerting
**MUST** use least privilege principles for database user accounts
**MUST NOT** hardcode database credentials in application code
**MUST** use transactions for multi-step operations that require atomicity
**MUST** keep transactions as short as possible
**MUST** handle transaction rollback scenarios explicitly
**MUST** use appropriate isolation levels for consistency requirements
**SHOULD** implement deadlock detection and handling
**MUST** validate data integrity within transactions
**MUST NOT** mix unrelated operations in single transactions
**MUST** write database migrations that are idempotent
**MUST** test migrations in non-production environments first
**MUST** create rollback procedures for all migrations
**MUST** version control all migration scripts
**MUST** document migration dependencies and execution order
**SHOULD** schedule maintenance windows for complex migrations
**MUST** backup databases before running migrations in production
**MUST** implement regular automated backups
**MUST** test backup restoration procedures regularly
**MUST** store backups in geographically separate locations
**MUST** encrypt backups containing sensitive data
**MUST** define and document recovery time objectives (RTO)
**MUST** define and document recovery point objectives (RPO)
**SHOULD** implement point-in-time recovery capabilities
**MUST** monitor database performance metrics continuously
**MUST** set up alerting for critical database issues
**MUST** track slow query logs
**SHOULD** implement database-specific monitoring dashboards
**MUST** monitor connection pool usage
**MUST** track database growth and capacity
**SHOULD** conduct regular performance reviews

## Performance Requirements

**MUST** define performance budgets for all critical user journeys
**MUST** set maximum response time targets (e.g., p95 latency < 200ms)
**MUST** establish error rate budgets (e.g., < 0.1% for critical operations)
**MUST** monitor actual performance against defined budgets
**MUST** alert when performance budgets are at 80% utilization
**MUST** block deployments that exceed performance budgets
**SHOULD** conduct regular performance budget reviews
**MUST** define CPU and memory limits for all services
**MUST** monitor resource utilization in production
**MUST** set alerts for resource usage exceeding 80% of limits
**MUST** implement auto-scaling for services that exceed resource thresholds
**MUST NOT** allow services to exceed defined resource limits
**SHOULD** optimize code to reduce resource consumption
**MUST** document resource requirements in service documentation
**MUST** implement caching for frequently accessed data
**MUST** define cache expiration and invalidation strategies
**MUST** use appropriate cache levels (local, distributed, CDN)
**MUST** handle cache miss scenarios gracefully
**MUST** monitor cache hit ratios and performance
**MUST NOT** cache sensitive or user-specific data without proper controls
**SHOULD** implement cache warming for critical data
**MUST** perform load testing for all new features
**MUST** define realistic load testing scenarios based on production metrics
**MUST** test performance under expected peak loads
**MUST** identify and address performance bottlenecks before deployment
**SHOULD** conduct regular load testing for existing features
**MUST** document load testing results and performance characteristics
**MUST** establish performance regression testing in CI/CD pipeline
**MUST** optimize database queries to meet response time targets
**MUST** use database indexing strategies effectively
**MUST** avoid N+1 query problems
**MUST** limit result set sizes for large data queries
**SHOULD** use query profiling tools to identify bottlenecks
**MUST** cache expensive query results when appropriate
**MUST** minimize network round trips in critical paths
**MUST** use connection pooling for external service calls
**MUST** implement appropriate timeouts for all network operations
**MUST** use compression for large data transfers
**SHOULD** colocate services to minimize network latency
**MUST** implement circuit breakers for external service dependencies
**MUST** monitor network performance and error rates
**MUST** use asynchronous processing for non-critical operations
**MUST** implement proper queue management for background jobs
**MUST** set appropriate worker counts based on workload
**MUST** handle job failures with retry mechanisms
**MUST** monitor queue depths and processing times
**SHOULD** implement priority queues for different job types
**MUST** provide visibility into background job status
**MUST** instrument all critical performance metrics
**MUST** collect and store performance data for trend analysis
**MUST** create dashboards for performance monitoring
**MUST** set up alerts for performance degradation
**SHOULD** implement real-user monitoring (RUM) for frontend performance
**MUST** track performance across different user segments
**MUST** conduct regular performance reviews and optimizations

## Architecture Requirements

**MUST** separate business logic from infrastructure concerns
**MUST** implement clear boundaries between system components
**MUST** use layered architecture principles
**MUST** separate data access logic from business logic
**MUST** isolate external service dependencies
**SHOULD** apply single responsibility principle to all modules
**MUST NOT** mix presentation, business, and data logic in single components
**MUST** define explicit dependencies between system components
**MUST** use dependency inversion principles
**MUST** minimize circular dependencies
**MUST** document dependency relationships in architecture diagrams
**MUST** implement appropriate dependency injection mechanisms
**SHOULD** use interface-based programming for loose coupling
**MUST NOT** allow high-level modules to depend on low-level implementation details
**MUST** decompose systems into services based on business capabilities
**MUST** ensure services have high cohesion and low coupling
**MUST** define clear service interfaces and contracts
**MUST** implement services that can be deployed independently
**MUST** establish service ownership and responsibility boundaries
**SHOULD** use domain-driven design principles for service boundaries
**MUST NOT** create services that are too granular or too coarse
**MUST** use appropriate communication mechanisms between services
**MUST** implement circuit breakers for remote service calls
**MUST** use asynchronous messaging for non-critical communications
**MUST** define retry and timeout policies for all service calls
**MUST** implement proper error handling for communication failures
**MUST** use message queues for decoupling services
**MUST** define clear data flow patterns within the system
**MUST** implement event sourcing where appropriate
**MUST** ensure data consistency across distributed systems
**MUST** handle data transformation at service boundaries
**MUST** implement proper data validation at each processing stage
**SHOULD** use CQRS patterns for complex data operations
**MUST NOT** allow unauthorized data access across service boundaries
**MUST** evaluate technology choices based on project requirements
**MUST** consider team expertise and support availability
**MUST** document technology selection rationale in ADRs
**MUST** ensure selected technologies align with organizational standards
**MUST** evaluate licensing and cost implications
**SHOULD** prefer proven, well-supported technologies over experimental ones
**MUST NOT** select technologies based solely on popularity or trends
**MUST** design systems to accommodate future growth
**MUST** implement backward compatibility for service interfaces
**MUST** plan for graceful degradation during system failures
**MUST** establish clear migration paths for architectural changes
**MUST** document architectural decisions and rationale
**SHOULD** use evolutionary architecture principles
**MUST NOT** make architectural changes that break existing functionality
**MUST** maintain up-to-date architecture documentation
**MUST** create and maintain architecture decision records (ADRs)
**MUST** document system context and constraints
**MUST** establish architectural review processes
**MUST** define governance procedures for architectural changes
**SHOULD** use architecture modeling tools for visualization
**MUST** conduct regular architecture reviews and assessments

## Security Requirements

**MUST** implement strong authentication mechanisms
**MUST** use multi-factor authentication for sensitive operations
**MUST** implement secure password policies
**MUST** use secure session management
**MUST** implement account lockout mechanisms
**SHOULD** implement single sign-on (SSO) where appropriate
**MUST NOT** store passwords in plain text
**MUST** implement role-based access control (RBAC)
**MUST** use principle of least privilege
**MUST** validate permissions at every access point
**MUST** implement attribute-based access control (ABAC) where appropriate
**MUST** separate authentication from authorization
**MUST** implement centralized authorization services
**MUST NOT** hardcode permissions in application logic
**MUST** validate all input at the application boundary
**MUST** use allowlists for input validation
**MUST** sanitize user input
**MUST** encode output to prevent injection attacks
**MUST** validate file uploads
**SHOULD** use parameterized queries for database access
**MUST NOT** trust any user input
**MUST** encrypt sensitive data at rest
**MUST** encrypt data in transit using TLS
**MUST** implement proper key management
**MUST** use secure random number generation
**MUST** mask sensitive data in logs
**SHOULD** implement data loss prevention (DLP)
**MUST NOT** log sensitive information
**MUST** externalize configuration from code
**MUST** use secure secrets management
**MUST** disable unnecessary services and features
**MUST** use secure default configurations
**MUST** implement configuration validation
**SHOULD** use infrastructure as code for secure configurations
**MUST NOT** store secrets in source code
**MUST** implement secure error handling
**MUST** avoid exposing sensitive information in error messages
**MUST** log security-relevant events
**MUST** protect logs from unauthorized access
**MUST** implement log integrity controls
**SHOULD** use structured logging for security events
**MUST NOT** log sensitive data
**MUST** use industry-standard cryptographic algorithms
**MUST** use appropriate key lengths
**MUST** implement secure key storage
**MUST** use cryptographically secure random number generators
**MUST** implement proper certificate management
**SHOULD** use hardware security modules (HSMs) for key management
**MUST NOT** implement custom cryptographic algorithms
**MUST** perform security testing during development
**MUST** conduct penetration testing regularly
**MUST** implement security code reviews
**MUST** use automated security scanning tools
**MUST** validate third-party components for vulnerabilities
**SHOULD** implement security unit testing
**MUST** address security findings promptly
**MUST** follow secure coding guidelines
**MUST** conduct threat modeling for new features
**MUST** implement security requirements tracing
**MUST** perform security-focused code reviews
**MUST** stay updated on security vulnerabilities
**SHOULD** participate in security training
**MUST** report security issues through proper channels
**MUST** implement security incident response procedures
**MUST** monitor for security events
**MUST** maintain security event logs
**MUST** respond to security incidents promptly
**MUST** conduct post-incident reviews
**SHOULD** implement security orchestration and automation
**MUST** communicate security incidents appropriately

## Testing Requirements

**MUST** follow the test pyramid approach (unit > integration > E2E)
**MUST** maintain appropriate ratios between test types (70% unit, 20% integration, 10% E2E)
**MUST** write unit tests before implementation code (TDD)
**MUST** ensure unit tests do not require external dependencies
**MUST** implement integration tests for service boundaries
**MUST** limit E2E tests to critical user journeys
**SHOULD** use contract testing for service-to-service interactions
**MUST** follow Arrange-Act-Assert pattern in test structure
**MUST** name tests descriptively (given-when-then format)
**MUST** test one behavior per test case
**MUST** avoid testing implementation details in unit tests
**MUST** use test data builders for complex test data
**SHOULD** use factory functions for test data creation
**MUST NOT** share state between test cases
**MUST** use deterministic test data
**MUST** avoid test data dependencies on external systems
**MUST** clean up test data after test execution
**MUST** use test data that clearly represents test scenarios
**MUST** avoid using production data in tests
**SHOULD** use data anonymization techniques when real data is needed
**MUST** maintain consistency between test environments
**MUST** use dedicated test environments separate from development
**MUST** reset test environments between test runs
**MUST** document test environment setup procedures
**MUST** use containerization for test environment consistency
**SHOULD** implement test environment as code
**MUST NOT** allow test environments to affect each other
**MUST** automate all regression tests
**MUST** run tests in CI/CD pipeline
**MUST** fail builds when tests fail
**MUST** provide clear failure messages for failing tests
**MUST** maintain test execution time within acceptable limits
**SHOULD** parallelize test execution where possible
**MUST** monitor test execution metrics
**MUST** maintain minimum 80% line coverage for business logic
**MUST** maintain minimum 70% branch coverage for business logic
**MUST** measure and report test coverage
**MUST** review coverage gaps with team
**MUST** address coverage gaps within one sprint
**SHOULD** use mutation testing to validate test quality
**MUST NOT** write tests solely to increase coverage metrics
**MUST** refactor tests when refactoring production code
**MUST** remove obsolete tests when removing functionality
**MUST** update tests when requirements change
**MUST** document test design decisions
**MUST** review and update tests regularly
**SHOULD** eliminate test code duplication
**MUST** maintain test readability and simplicity
**MUST** keep unit tests under 100ms execution time
**MUST** keep integration tests under 1 second execution time
**MUST** keep E2E tests under 10 seconds execution time
**MUST** identify and optimize slow tests
**MUST** run fast tests before slow tests
**SHOULD** use test parallelization
**MUST** monitor test execution performance
**MUST** use project-standard testing frameworks
**MUST** use appropriate assertion libraries
**MUST** use mocking frameworks for unit tests
**MUST** use test runners with reporting capabilities
**MUST** integrate testing tools with IDEs
**SHOULD** use property-based testing where appropriate
**MUST** document testing tool configurations

## Web Development Requirements

**MUST** use semantic HTML elements
**MUST** ensure proper document structure
**MUST** use appropriate heading hierarchy
**MUST** provide alternative text for images
**MUST** use proper form labeling
**SHOULD** validate HTML markup
**MUST NOT** use deprecated HTML elements
**MUST** use CSS for presentation, not HTML
**MUST** follow consistent naming conventions (BEM, OOCSS, etc.)
**MUST** use responsive design principles
**MUST** implement mobile-first approach
**MUST** optimize CSS for performance
**SHOULD** use CSS preprocessors where appropriate
**MUST NOT** use !important excessively
**MUST** use modern JavaScript (ES6+) features
**MUST** follow consistent coding standards
**MUST** implement proper error handling
**MUST** use module patterns for code organization
**MUST** optimize JavaScript for performance
**SHOULD** use TypeScript for type safety
**MUST NOT** manipulate DOM directly without framework
**MUST** optimize loading performance
**MUST** implement lazy loading for images and components
**MUST** minimize bundle sizes
**MUST** use content delivery networks (CDNs)
**MUST** implement caching strategies
**SHOULD** use code splitting
**MUST** optimize critical rendering path
**MUST** meet WCAG 2.1 AA compliance
**MUST** ensure keyboard navigation support
**MUST** provide proper focus management
**MUST** use ARIA attributes appropriately
**MUST** implement skip navigation links
**SHOULD** conduct accessibility testing
**MUST** provide text alternatives for non-text content
**MUST** implement Content Security Policy (CSP)
**MUST** prevent cross-site scripting (XSS)
**MUST** implement proper input validation
**MUST** use HTTPS for all communications
**MUST** implement CSRF protection
**SHOULD** use Subresource Integrity (SRI)
**MUST NOT** inline JavaScript or CSS
**MUST** implement mobile-responsive layouts
**MUST** use flexible grids and layouts
**MUST** implement touch-friendly interfaces
**MUST** test across different screen sizes
**MUST** optimize images for different resolutions
**SHOULD** use CSS media queries appropriately
**MUST** consider performance on mobile devices
**MUST** support target browser versions
**MUST** test in multiple browsers
**MUST** use feature detection instead of browser detection
**MUST** provide graceful degradation
**MUST** use vendor prefixes appropriately
**SHOULD** use polyfills for missing features
**MUST** document browser support matrix
**MUST** implement unit testing for JavaScript
**MUST** conduct cross-browser testing
**MUST** test responsive layouts
**MUST** perform accessibility testing
**MUST** implement end-to-end testing
**SHOULD** use visual regression testing
**MUST** test performance metrics
**MUST** implement proper meta tags
**MUST** use semantic URLs
**MUST** implement structured data markup
**MUST** optimize for search engines
**MUST** provide sitemaps
**SHOULD** implement social media meta tags
**MUST** use descriptive page titles and meta descriptions

## Containerization Requirements

**MUST** use official base images when available
**MUST** specify exact image versions (no latest tags)
**MUST** run containers as non-root users
**MUST** use multi-stage builds for production images
**MUST** minimize the number of layers in Dockerfiles
**MUST** combine related commands to reduce layers
**MUST NOT** include secrets or sensitive data in Dockerfiles
**MUST** scan images for vulnerabilities regularly
**MUST** use distroless or minimal base images
**MUST** remove unnecessary packages and tools
**MUST** run security updates on base images
**MUST** implement image signing and verification
**SHOULD** use image vulnerability scanning tools
**MUST NOT** run privileged containers in production
**MUST** minimize image size
**MUST** use .dockerignore files
**MUST** leverage Docker layer caching
**MUST** clean up temporary files in the same layer
**MUST** use appropriate base image types (alpine, slim, etc.)
**SHOULD** use BuildKit for improved build performance
**MUST NOT** install unnecessary dependencies
**MUST** set appropriate resource limits (CPU, memory)
**MUST** configure health checks for all services
**MUST** use read-only root filesystems when possible
**MUST** drop unnecessary capabilities
**MUST** configure appropriate restart policies
**SHOULD** use user namespaces for additional isolation
**MUST NOT** expose unnecessary ports
**MUST** externalize configuration through environment variables
**MUST** validate required environment variables at startup
**MUST** provide default values for non-sensitive configuration
**MUST** document all environment variables
**MUST** use secrets management for sensitive configuration
**SHOULD** use configuration files mounted as volumes for complex configuration
**MUST NOT** hardcode environment-specific values
**MUST** use container networking for service communication
**MUST** implement service discovery mechanisms
**MUST** configure appropriate network policies
**MUST** use internal networking for service-to-service communication
**MUST** expose only necessary ports
**SHOULD** use service meshes for complex microservices
**MUST NOT** rely on container IP addresses
**MUST** use volumes for persistent data
**MUST** separate application code from data
**MUST** implement proper backup strategies for volumes
**MUST** use appropriate volume drivers
**MUST** configure proper file permissions
**SHOULD** use init containers for volume preparation
**MUST NOT** store persistent data in containers
**MUST** emit logs to stdout/stderr
**MUST** use structured logging formats
**MUST** implement health check endpoints
**MUST** expose metrics endpoints
**MUST** use appropriate log levels
**SHOULD** implement distributed tracing
**MUST** monitor container resource usage
**MUST** tag images with semantic versioning
**MUST** store images in secure registries
**MUST** implement image retention policies
**MUST** scan images before deployment
**MUST** sign production images
**SHOULD** use image promotion between environments
**MUST** document image creation and usage

## Version Control Requirements

**MUST** follow the established branching strategy (e.g., GitFlow, GitHub Flow, Trunk-Based Development)
**MUST** create feature branches from the main branch
**MUST** delete feature branches after merging
**MUST** use descriptive branch names (e.g., feature/user-authentication)
**MUST** regularly sync feature branches with the main branch
**SHOULD** use short-lived feature branches (less than 3 days)
**MUST NOT** commit directly to the main branch
**MUST** follow conventional commit message format
**MUST** use present tense in commit messages
**MUST** capitalize the first letter of commit messages
**MUST** keep commit messages under 72 characters
**MUST** use blank line between subject and body
**MUST** reference issue numbers in commit messages
**SHOULD** explain the "why" not just the "what" in commit messages
**MUST** create pull requests for all changes
**MUST** have at least one approval before merging
**MUST** address all review comments before merging
**MUST** run all tests successfully before requesting review
**MUST** keep pull requests small and focused
**SHOULD** assign appropriate reviewers based on expertise
**MUST NOT** merge pull requests with failing checks
**MUST** verify code follows project coding standards
**MUST** check for security vulnerabilities
**MUST** validate error handling and edge cases
**MUST** ensure code is testable and tested
**MUST** verify documentation is updated
**SHOULD** check for performance implications
**MUST NOT** approve code that doesn't meet quality standards
**MUST** evaluate code readability and maintainability
**MUST** check for code duplication
**MUST** verify appropriate use of design patterns
**MUST** assess complexity and cyclomatic complexity
**MUST** ensure proper separation of concerns
**SHOULD** look for opportunities for improvement
**MUST NOT** ignore code smells or anti-patterns
**MUST** check for common security vulnerabilities
**MUST** verify input validation and sanitization
**MUST** ensure proper authentication and authorization
**MUST** check for sensitive data exposure
**MUST** validate dependency security
**SHOULD** use automated security scanning tools
**MUST** verify adequate test coverage
**MUST** check test quality and clarity
**MUST** ensure tests are deterministic
**MUST** validate edge case coverage
**MUST** verify test data appropriateness
**SHOULD** suggest additional test scenarios
**MUST** confirm tests pass consistently
**MUST** verify code is self-documenting
**MUST** check for appropriate comments
**MUST** ensure documentation is updated
**MUST** validate API documentation accuracy
**MUST** confirm README updates
**SHOULD** suggest documentation improvements
**MUST** verify inline documentation clarity
**MUST** identify potential performance bottlenecks
**MUST** check for resource leaks
**MUST** validate algorithm efficiency
**MUST** ensure appropriate caching usage
**MUST** verify database query efficiency
**SHOULD** suggest performance optimizations
**MUST** consider scalability implications
**MUST** provide constructive feedback
**MUST** explain reasoning for suggestions
**MUST** respect authors and their work
**MUST** focus on code, not individuals
**MUST** be responsive to questions and discussions
**SHOULD** acknowledge good practices and improvements
**MUST NOT** use review process for personal preferences
**MUST** respond to review requests within 24 hours
**MUST** provide initial feedback within 48 hours
**MUST** complete reviews within 72 hours
**MUST** prioritize urgent or blocking reviews
**MUST** communicate delays proactively
**SHOULD** conduct reviews in timely manner
**MUST** respect team review capacity
**MUST** use fast-forward merges when possible
**MUST** use squash merges for feature branches
**MUST** preserve commit history for significant changes
**MUST** resolve merge conflicts before merging
**MUST** verify changes after merge
**SHOULD** use merge commits for significant releases
**MUST NOT** rewrite public commit history
**MUST** maintain a clean project root directory
**MUST** use appropriate .gitignore files
**MUST** document repository structure
**MUST** keep sensitive information out of the repository
**MUST** use submodules for external dependencies when appropriate
**SHOULD** use meaningful directory structures
**MUST NOT** commit generated files
**MUST** use semantic versioning for releases
**MUST** create annotated tags for releases
**MUST** document release notes for each tag
**MUST** follow established release process
**MUST** verify releases before publishing
**SHOULD** use pre-release tags for beta versions
**MUST NOT** modify existing tags
**MUST** maintain a clean, linear history when possible
**MUST** avoid unnecessary merge commits
**MUST** write descriptive commit messages
**MUST** preserve important historical context
**MUST** use revert commits for undoing changes
**SHOULD** use interactive rebasing for cleaning up history
**MUST NOT** use force push on shared branches
**MUST** communicate with team before large changes
**MUST** respect team conventions and standards
**MUST** provide context in pull requests
**MUST** respond to review comments promptly
**MUST** test changes in isolation before merging
**SHOULD** pair program for complex changes
**MUST NOT** ignore failing tests or checks

## Code Review Requirements

**MUST** create pull requests for all changes
**MUST** have at least one approval before merging
**MUST** address all review comments before merging
**MUST** run all tests successfully before requesting review
**MUST** keep pull requests small and focused
**SHOULD** assign appropriate reviewers based on expertise
**MUST NOT** merge pull requests with failing checks
**MUST** verify code follows project coding standards
**MUST** check for security vulnerabilities
**MUST** validate error handling and edge cases
**MUST** ensure code is testable and tested
**MUST** verify documentation is updated
**SHOULD** check for performance implications
**MUST NOT** approve code that doesn't meet quality standards
**MUST** evaluate code readability and maintainability
**MUST** check for code duplication
**MUST** verify appropriate use of design patterns
**MUST** assess complexity and cyclomatic complexity
**MUST** ensure proper separation of concerns
**SHOULD** look for opportunities for improvement
**MUST NOT** ignore code smells or anti-patterns
**MUST** check for common security vulnerabilities
**MUST** verify input validation and sanitization
**MUST** ensure proper authentication and authorization
**MUST** check for sensitive data exposure
**MUST** validate dependency security
**SHOULD** use automated security scanning tools
**MUST** verify adequate test coverage
**MUST** check test quality and clarity
**MUST** ensure tests are deterministic
**MUST** validate edge case coverage
**MUST** verify test data appropriateness
**SHOULD** suggest additional test scenarios
**MUST** confirm tests pass consistently
**MUST** verify code is self-documenting
**MUST** check for appropriate comments
**MUST** ensure documentation is updated
**MUST** validate API documentation accuracy
**MUST** confirm README updates
**SHOULD** suggest documentation improvements
**MUST** verify inline documentation clarity
**MUST** identify potential performance bottlenecks
**MUST** check for resource leaks
**MUST** validate algorithm efficiency
**MUST** ensure appropriate caching usage
**MUST** verify database query efficiency
**SHOULD** suggest performance optimizations
**MUST** consider scalability implications
**MUST** provide constructive feedback
**MUST** explain reasoning for suggestions
**MUST** respect authors and their work
**MUST** focus on code, not individuals
**MUST** be responsive to questions and discussions
**SHOULD** acknowledge good practices and improvements
**MUST NOT** use review process for personal preferences
**MUST** respond to review requests within 24 hours
**MUST** provide initial feedback within 48 hours
**MUST** complete reviews within 72 hours
**MUST** prioritize urgent or blocking reviews
**MUST** communicate delays proactively
**SHOULD** conduct reviews in timely manner
**MUST** respect team review capacity

## Data Engineering Requirements

**MUST** design pipelines for scalability and reliability
**MUST** implement idempotent operations
**MUST** handle data schema evolution gracefully
**MUST** implement proper error handling and retry mechanisms
**MUST** design for monitoring and observability
**SHOULD** use stream processing for real-time requirements
**MUST NOT** create tightly coupled pipeline components
**MUST** implement data validation at each stage
**MUST** handle data quality issues explicitly
**MUST** implement data lineage tracking
**MUST** use appropriate data transformation techniques
**MUST** implement incremental processing where possible
**SHOULD** use change data capture (CDC) for incremental loads
**MUST** document ETL/ELT process logic
**MUST** define data quality metrics
**MUST** implement data profiling
**MUST** validate data against business rules
**MUST** handle data anomalies appropriately
**MUST** implement data quality monitoring
**SHOULD** use automated data quality checks
**MUST** document data quality issues and resolutions
**MUST** choose appropriate storage solutions for use cases
**MUST** implement data partitioning strategies
**MUST** use appropriate data formats (Parquet, Avro, etc.)
**MUST** implement data retention policies
**MUST** ensure data durability and availability
**SHOULD** use columnar storage for analytical workloads
**MUST** implement backup and recovery procedures
**MUST** optimize data access patterns
**MUST** implement appropriate indexing strategies
**MUST** use data compression techniques
**MUST** optimize resource allocation for workloads
**MUST** monitor and tune pipeline performance
**SHOULD** use caching for frequently accessed data
**MUST** implement query optimization techniques
**MUST** encrypt sensitive data at rest and in transit
**MUST** implement access controls for data resources
**MUST** anonymize or pseudonymize personal data
**MUST** comply with data privacy regulations
**MUST** audit data access and modifications
**SHOULD** implement data masking for development environments
**MUST** implement secure data sharing mechanisms
**MUST** implement pipeline monitoring
**MUST** track data lineage and provenance
**MUST** monitor data quality metrics
**MUST** implement alerting for pipeline failures
**MUST** log pipeline execution details
**SHOULD** implement real-time monitoring dashboards
**MUST** track pipeline performance metrics
**MUST** implement metadata management
**MUST** document data dictionaries and schemas
**MUST** establish data ownership and stewardship
**MUST** implement data cataloging
**MUST** define data lifecycle management policies
**SHOULD** implement data access logging
**MUST** establish data quality standards
**MUST** test data pipelines with realistic data volumes
**MUST** implement unit tests for transformation logic
**MUST** validate data outputs against expected results
**MUST** test error handling scenarios
**MUST** implement data contract testing
**SHOULD** use data quality testing frameworks
**MUST** perform integration testing for pipeline components
**MUST** implement CI/CD for data pipelines
**MUST** use infrastructure as code for data environments
**MUST** implement rollback procedures for pipeline changes
**MUST** version control pipeline code and configurations
**MUST** implement blue-green deployments where possible
**SHOULD** use containerization for pipeline components
**MUST** automate pipeline deployment and configuration

## Cloud Requirements

**MUST** design applications as loosely coupled services
**MUST** implement twelve-factor application principles
**MUST** use declarative infrastructure provisioning
**MUST** design for failure and implement graceful degradation
**MUST** use horizontal scaling instead of vertical scaling
**SHOULD** implement eventual consistency patterns
**MUST NOT** create tight coupling between services
**MUST** define and enforce resource quotas
**MUST** implement auto-scaling policies
**MUST** monitor resource utilization
**MUST** set appropriate CPU and memory limits
**MUST** implement resource scheduling policies
**SHOULD** use spot instances or preemptible VMs for fault-tolerant workloads
**MUST NOT** over-provision resources
**MUST** implement cost monitoring and alerting
**MUST** use appropriate instance types for workloads
**MUST** implement resource cleanup policies
**MUST** use reserved instances for predictable workloads
**MUST** optimize data transfer costs
**SHOULD** implement cost allocation tagging
**MUST** conduct regular cost optimization reviews
**MUST** implement zero-trust security model
**MUST** use cloud provider security best practices
**MUST** encrypt data at rest and in transit
**MUST** implement identity and access management
**MUST** conduct regular security assessments
**SHOULD** use cloud security posture management tools
**MUST** comply with relevant regulations and standards
**MUST** implement network segmentation
**MUST** use private networks for internal communication
**MUST** implement secure network access controls
**MUST** use content delivery networks for static assets
**MUST** implement DDoS protection
**SHOULD** use global load balancing for multi-region deployments
**MUST** encrypt all network traffic
**MUST** implement data backup and recovery strategies
**MUST** use appropriate storage classes for data
**MUST** implement data lifecycle policies
**MUST** ensure data availability and durability
**MUST** implement data replication for critical data
**SHOULD** use managed database services
**MUST** implement comprehensive monitoring
**MUST** set up alerting for critical metrics
**MUST** use distributed tracing
**MUST** implement log aggregation
**MUST** monitor application performance
**SHOULD** implement business metric monitoring
**MUST** use cloud provider monitoring services
**MUST** implement multi-zone deployments
**MUST** define recovery time objectives (RTO)
**MUST** define recovery point objectives (RPO)
**MUST** implement backup and restore procedures
**MUST** conduct disaster recovery testing
**SHOULD** implement multi-region deployments for critical services
**MUST** document disaster recovery procedures
**MUST** use managed services when available
**MUST** implement circuit breakers for external services
**MUST** use appropriate integration patterns
**MUST** implement retry logic with exponential backoff
**MUST** handle partial failures gracefully
**SHOULD** use service meshes for complex microservices
**MUST** monitor service dependencies
**MUST** avoid vendor lock-in when possible
**MUST** understand vendor SLAs and limitations
**MUST** have contingency plans for vendor failures
**MUST** evaluate vendor security practices
**MUST** negotiate appropriate support levels
**SHOULD** use multi-cloud strategies for critical services
**MUST** maintain vendor relationship documentation

## Microservices Requirements

**MUST** design services around business capabilities
**MUST** ensure services have high cohesion and low coupling
**MUST** define clear service boundaries
**MUST** implement single responsibility principle for services
**MUST** use domain-driven design principles
**SHOULD** design services to be loosely coupled
**MUST NOT** create services with overlapping responsibilities
**MUST** use appropriate communication mechanisms (sync vs async)
**MUST** implement circuit breakers for remote calls
**MUST** use timeouts for all remote calls
**MUST** implement retry logic with exponential backoff
**MUST** use message queues for asynchronous communication
**MUST** implement bulkhead patterns for fault isolation
**MUST NOT** create synchronous dependencies for non-critical operations
**MUST** use database per service pattern
**MUST** implement eventual consistency for distributed data
**MUST** use saga patterns for distributed transactions
**MUST** implement CQRS where appropriate
**MUST** handle data ownership and access control
**SHOULD** use event sourcing for audit trails
**MUST NOT** share databases between services
**MUST** implement service discovery mechanisms
**MUST** externalize configuration from services
**MUST** use configuration management systems
**MUST** implement health check endpoints
**MUST** use appropriate load balancing strategies
**SHOULD** implement client-side load balancing
**MUST** provide service metadata for discovery
**MUST** implement end-to-end security
**MUST** use mutual TLS for service-to-service communication
**MUST** implement proper authentication and authorization
**MUST** encrypt data in transit
**MUST** implement API gateway patterns for external access
**SHOULD** use zero-trust security models
**MUST NOT** expose internal services directly to the internet
**MUST** implement distributed tracing
**MUST** use structured logging
**MUST** expose metrics for monitoring
**MUST** implement correlation IDs for request tracking
**MUST** monitor service dependencies
**SHOULD** implement real-user monitoring
**MUST** provide debugging interfaces
**MUST** deploy services independently
**MUST** implement blue-green or canary deployment strategies
**MUST** use containerization for service deployment
**MUST** implement health checks and readiness probes
**MUST** use orchestration platforms
**MUST** implement feature flags for service functionality
**MUST** automate deployment processes
**MUST** implement graceful degradation
**MUST** use circuit breaker patterns
**MUST** implement bulkhead patterns
**MUST** handle partial failures gracefully
**MUST** implement timeout mechanisms
**SHOULD** use chaos engineering for resilience testing
**MUST** implement proper error handling and recovery
**MUST** test services in isolation
**MUST** implement contract testing between services
**MUST** test service integration points
**MUST** simulate network failures in testing
**MUST** implement consumer-driven contract testing
**SHOULD** use service virtualization for testing
**MUST** test observability and monitoring
**MUST** maintain backward compatibility
**MUST** version APIs appropriately
**MUST** implement deprecation policies
**MUST** provide migration paths for breaking changes
**MUST** document service interfaces and contracts
**SHOULD** use strangler fig patterns for service replacement
**MUST** conduct impact analysis for service changes

## Application Security Requirements

**MUST** implement strong authentication mechanisms
**MUST** use multi-factor authentication for sensitive operations
**MUST** implement secure password policies
**MUST** use secure session management
**MUST** implement account lockout mechanisms
**SHOULD** implement single sign-on (SSO) where appropriate
**MUST NOT** store passwords in plain text
**MUST** implement role-based access control (RBAC)
**MUST** use principle of least privilege
**MUST** validate permissions at every access point
**MUST** implement attribute-based access control (ABAC) where appropriate
**MUST** separate authentication from authorization
**MUST** implement centralized authorization services
**MUST NOT** hardcode permissions in application logic
**MUST** validate all input at the application boundary
**MUST** use allowlists for input validation
**MUST** sanitize user input
**MUST** encode output to prevent injection attacks
**MUST** validate file uploads
**SHOULD** use parameterized queries for database access
**MUST NOT** trust any user input
**MUST** encrypt sensitive data at rest
**MUST** encrypt data in transit using TLS
**MUST** implement proper key management
**MUST** use secure random number generation
**MUST** mask sensitive data in logs
**SHOULD** implement data loss prevention (DLP)
**MUST NOT** log sensitive information
**MUST** externalize configuration from code
**MUST** use secure secrets management
**MUST** disable unnecessary services and features
**MUST** use secure default configurations
**MUST** implement configuration validation
**SHOULD** use infrastructure as code for secure configurations
**MUST NOT** store secrets in source code
**MUST** implement secure error handling
**MUST** avoid exposing sensitive information in error messages
**MUST** log security-relevant events
**MUST** protect logs from unauthorized access
**MUST** implement log integrity controls
**SHOULD** use structured logging for security events
**MUST NOT** log sensitive data
**MUST** use industry-standard cryptographic algorithms
**MUST** use appropriate key lengths
**MUST** implement secure key storage
**MUST** use cryptographically secure random number generators
**MUST** implement proper certificate management
**SHOULD** use hardware security modules (HSMs) for key management
**MUST NOT** implement custom cryptographic algorithms
**MUST** perform security testing during development
**MUST** conduct penetration testing regularly
**MUST** implement security code reviews
**MUST** use automated security scanning tools
**MUST** validate third-party components for vulnerabilities
**SHOULD** implement security unit testing
**MUST** address security findings promptly
**MUST** follow secure coding guidelines
**MUST** conduct threat modeling for new features
**MUST** implement security requirements tracing
**MUST** perform security-focused code reviews
**MUST** stay updated on security vulnerabilities
**SHOULD** participate in security training
**MUST** report security issues through proper channels
**MUST** implement security incident response procedures
**MUST** monitor for security events
**MUST** maintain security event logs
**MUST** respond to security incidents promptly
**MUST** conduct post-incident reviews
**SHOULD** implement security orchestration and automation
**MUST** communicate security incidents appropriately

## Data Privacy Requirements

**MUST** collect only data that is necessary for specified purposes
**MUST** regularly review and purge unnecessary data
**MUST** implement data retention policies with clear expiration dates
**MUST** obtain explicit consent for each data processing purpose
**MUST NOT** collect sensitive data without explicit justification
**SHOULD** use pseudonymization techniques where possible
**MUST** document data minimization decisions in privacy impact assessments
**MUST** process personal data only for specified, explicit, and legitimate purposes
**MUST** obtain separate consent for each distinct purpose
**MUST NOT** use data for purposes incompatible with original collection
**MUST** document all data processing purposes
**MUST** inform data subjects of all processing purposes
**MUST NOT** implement purpose-based access controls
**MUST** implement clear and accessible consent mechanisms
**MUST** obtain explicit consent for processing sensitive data
**MUST** provide granular consent options for different processing activities
**MUST** maintain records of all consent transactions
**MUST** implement easy withdrawal of consent
**SHOULD** use standardized consent receipt formats
**MUST NOT** make services conditional on unrelated consent
**MUST** implement mechanisms for data subject access requests
**MUST** provide data portability in machine-readable formats
**MUST** honor requests for rectification of inaccurate data
**MUST** implement secure data erasure procedures
**MUST** respond to data subject requests within legal timeframes
**SHOULD** automate common data subject request workflows
**MUST NOT** unjustifiably refuse legitimate data subject requests
**MUST** implement privacy controls in system design
**MUST** use default privacy settings that maximize protection
**MUST** implement privacy-preserving technologies (e.g., differential privacy)
**MUST** conduct privacy impact assessments for high-risk processing
**MUST** implement data protection measures proportional to risk
**SHOULD** use privacy-enhancing technologies (PETs)
**MUST NOT** implement features that compromise privacy without justification
**MUST** encrypt personal data at rest and in transit
**MUST** implement access controls based on need-to-know principle
**MUST** use strong authentication for data access
**MUST** implement secure data disposal procedures
**MUST** monitor and log data access activities
**SHOULD** implement data loss prevention (DLP) solutions
**MUST NOT** store unnecessary personal data in logs or backups
**MUST** ensure adequate protection for international data transfers
**MUST** implement appropriate safeguards for cross-border transfers
**MUST** document legal basis for all international transfers
**MUST** conduct transfer impact assessments where required
**MUST NOT** transfer data to jurisdictions without adequate protection
**SHOULD** use standard contractual clauses for transfers
**MUST** implement supplementary measures where necessary
**MUST** appoint data protection officers where required
**MUST** maintain records of all data processing activities
**MUST** conduct regular privacy training for staff
**MUST** implement privacy incident response procedures
**MUST** conduct periodic privacy compliance audits
**SHOULD** establish privacy committees or governance bodies
**MUST** maintain up-to-date privacy policies and notices

## Infrastructure Requirements

**MUST** maintain parity between development, staging, and production environments
**MUST** use infrastructure as code (IaC) for all environments
**MUST** version control all infrastructure configurations
**MUST** implement environment-specific configuration management
**MUST** document environment setup and provisioning procedures
**SHOULD** use containerization for consistent environments
**MUST NOT** allow manual changes to production infrastructure
**MUST** externalize all configuration from application code
**MUST** use secure secret management for sensitive configuration
**MUST** validate configuration at application startup
**MUST** implement configuration change management processes
**MUST** provide default values for non-sensitive configuration
**SHOULD** use feature flags for runtime configuration
**MUST NOT** hardcode environment-specific values
**MUST** implement network segmentation and isolation
**MUST** use firewalls to control traffic between network zones
**MUST** implement secure network access controls
**MUST** encrypt all network traffic in transit
**MUST** monitor network traffic for anomalies
**SHOULD** implement zero-trust network principles
**MUST NOT** expose internal services directly to the internet
**MUST** define and enforce resource quotas for all services
**MUST** monitor resource utilization across environments
**MUST** implement auto-scaling for variable workloads
**MUST** set appropriate CPU, memory, and storage limits
**MUST** implement resource scheduling and prioritization
**SHOULD** use resource optimization tools
**MUST** conduct capacity planning regularly
**MUST** implement comprehensive infrastructure monitoring
**MUST** set up alerting for critical infrastructure metrics
**MUST** define appropriate alert thresholds and severity levels
**MUST** implement log aggregation and analysis
**MUST** monitor system health and performance
**SHOULD** implement distributed tracing for microservices
**MUST** establish incident response procedures
**MUST** implement automated backup procedures for all critical data
**MUST** test backup restoration procedures regularly
**MUST** store backups in geographically separate locations
**MUST** encrypt backups containing sensitive data
**MUST** define recovery time objectives (RTO) and recovery point objectives (RPO)
**SHOULD** implement point-in-time recovery capabilities
**MUST** document backup and recovery procedures
**MUST** develop and maintain disaster recovery plans
**MUST** conduct regular disaster recovery testing
**MUST** implement failover mechanisms for critical services
**MUST** maintain up-to-date contact information for incident response
**MUST** establish communication procedures during incidents
**SHOULD** implement multi-region deployments for critical services
**MUST** conduct post-incident reviews and update procedures
**MUST** apply security patches and updates promptly
**MUST** implement least privilege access controls
**MUST** conduct regular vulnerability assessments
**MUST** implement secure configuration baselines
**MUST** monitor for security events and anomalies
**SHOULD** implement infrastructure-level intrusion detection
**MUST** maintain compliance with security standards and frameworks

## Maintenance Requirements

**MUST** track and document all technical debt items
**MUST** prioritize technical debt based on business impact
**MUST** allocate time for technical debt reduction in planning
**MUST** conduct regular technical debt assessments
**MUST** document technical debt rationale and payback plans
**SHOULD** use technical debt metrics in project reporting
**MUST NOT** allow technical debt to accumulate without mitigation plans
**MUST** refactor code regularly to improve maintainability
**MUST** write tests before refactoring existing code
**MUST** ensure refactored code maintains existing functionality
**MUST** conduct code reviews for significant refactorings
**MUST** document refactoring decisions and impacts
**SHOULD** use automated refactoring tools where available
**MUST** monitor system performance after refactoring
**MUST** establish clear deprecation timelines for features and APIs
**MUST** communicate deprecations to all stakeholders
**MUST** provide migration paths for deprecated functionality
**MUST** maintain backward compatibility during deprecation periods
**MUST** document deprecation reasons and alternatives
**SHOULD** use feature flags to manage deprecation transitions
**MUST** remove deprecated functionality after announced timelines
**MUST** regularly update dependencies to supported versions
**MUST** test updates in non-production environments first
**MUST** create rollback plans for all significant updates
**MUST** monitor system performance after updates
**MUST** document update procedures and results
**SHOULD** automate routine update processes
**MUST** address security vulnerabilities within 72 hours
**MUST** keep documentation synchronized with code changes
**MUST** review and update documentation regularly
**MUST** document system architecture and design decisions
**MUST** maintain runbooks for operational procedures
**MUST** update documentation as part of feature development
**SHOULD** use automated documentation generation where possible
**MUST** verify documentation accuracy through regular reviews
**MUST** conduct knowledge transfer sessions for significant changes
**MUST** document key decisions and rationales
**MUST** maintain team wikis or knowledge bases
**MUST** cross-train team members on critical systems
**MUST** document onboarding procedures for new team members
**SHOULD** conduct regular knowledge sharing sessions
**MUST** capture institutional knowledge before team changes
**MUST** establish criteria for system retirement
**MUST** plan and communicate retirement timelines
**MUST** migrate or archive data before system retirement
**MUST** document retirement procedures and lessons learned
**MUST** redirect or disable access to retired systems
**SHOULD** conduct post-retirement reviews
**MUST** update architecture documentation after retirements

## Compliance Requirements

**MUST** identify and document all applicable regulations
**MUST** implement controls to meet regulatory requirements
**MUST** conduct regular compliance assessments
**MUST** maintain compliance documentation and evidence
**MUST** train team members on relevant regulations
**SHOULD** engage compliance officers in system design
**MUST NOT** proceed with non-compliant implementations
**MUST** implement comprehensive audit logging for critical operations
**MUST** ensure audit logs are immutable and tamper-evident
**MUST** log who, what, when, and where for all significant actions
**MUST** retain audit logs for required periods
**MUST** protect audit logs from unauthorized access
**SHOULD** implement real-time audit monitoring
**MUST** provide audit log access for authorized personnel
**MUST** verify licenses for all third-party components
**MUST** maintain a software bill of materials (SBOM)
**MUST NOT** use components with prohibited licenses
**MUST** comply with attribution requirements
**MUST** monitor for license changes in dependencies
**SHOULD** use automated license scanning tools
**MUST** document license compliance decisions
**MUST** comply with WCAG 2.1 AA accessibility standards
**MUST** conduct accessibility testing for user interfaces
**MUST** provide alternative text for images
**MUST** ensure keyboard navigation support
**MUST** use proper semantic HTML structure
**SHOULD** implement accessibility monitoring
**MUST** document WCAG compliance efforts
**MUST** identify required security certifications (ISO 27001, SOC 2, etc.)
**MUST** implement controls necessary for certification
**MUST** undergo regular security assessments
**MUST** maintain certification documentation
**MUST** address findings from certification audits
**SHOULD** engage third-party assessors for certification
**MUST** maintain continuous compliance with certification requirements
**MUST** comply with GDPR, CCPA, and other applicable data protection laws
**MUST** implement privacy by design principles
**MUST** conduct data protection impact assessments
**MUST** appoint data protection officers where required
**MUST** implement appropriate data transfer mechanisms
**SHOULD** maintain records of processing activities
**MUST** respond to data subject requests within legal timeframes
**MUST** comply with industry-specific regulations (PCI-DSS, HIPAA, etc.)
**MUST** implement controls specific to industry requirements
**MUST** undergo required industry audits and assessments
**MUST** maintain industry-specific compliance documentation
**MUST** train personnel on industry regulations
**SHOULD** engage industry specialists for compliance guidance
**MUST** monitor for changes in industry regulations
**MUST** maintain comprehensive compliance documentation
**MUST** generate required compliance reports
**MUST** retain compliance records for specified periods
**MUST** provide compliance evidence to auditors
**MUST** document compliance testing and assessment results
**SHOULD** automate compliance reporting where possible
**MUST** update compliance documentation with regulatory changes

## Daemon Requirements

**MUST** design daemons to run continuously without user intervention
**MUST** implement proper signal handling for graceful shutdown
**MUST** handle process forking appropriately for daemonization
**MUST** implement proper logging mechanisms
**MUST** handle configuration through files or environment variables
**SHOULD** implement health check endpoints or mechanisms
**MUST NOT** require interactive user input during normal operation
**MUST** implement proper PID file management
**MUST** ensure only one instance of the daemon runs at a time
**MUST** handle process restarts gracefully
**MUST** implement proper error handling and recovery
**MUST** use appropriate process priorities and resource limits
**SHOULD** implement process monitoring and alerting
**MUST NOT** leave zombie processes
**MUST** implement structured logging
**MUST** log to appropriate facilities (syslog, files, etc.)
**MUST** implement log rotation to prevent disk exhaustion
**MUST** include timestamp and severity level in all log entries
**MUST** avoid logging sensitive information
**SHOULD** implement log aggregation for centralized monitoring
**MUST** provide sufficient logging for debugging and auditing
**MUST** run with minimal required privileges
**MUST** implement proper file and directory permissions
**MUST** validate and sanitize all inputs
**MUST** protect configuration files from unauthorized access
**MUST** implement secure communication channels when needed
**SHOULD** implement authentication and authorization for management interfaces
**MUST NOT** run as root unless absolutely necessary
**MUST** implement proper memory management to prevent leaks
**MUST** handle file descriptor management appropriately
**MUST** implement resource limits to prevent system exhaustion
**MUST** handle network connections efficiently
**MUST** implement proper garbage collection or memory cleanup
**SHOULD** monitor resource usage and performance metrics
**MUST NOT** consume excessive system resources
**MUST** support configuration through files
**MUST** validate configuration parameters at startup
**MUST** provide default values for optional configuration
**MUST** support configuration reloading without restart when possible
**MUST** document all configuration options
**SHOULD** support environment variable overrides
**MUST NOT** hardcode configuration values
**MUST** implement comprehensive error handling
**MUST** handle unexpected conditions gracefully
**MUST** implement retry mechanisms for transient failures
**MUST** provide meaningful error messages
**MUST** implement circuit breaker patterns for external dependencies
**SHOULD** implement self-healing mechanisms
**MUST NOT** crash or terminate unexpectedly
**MUST** provide systemd unit files or equivalent for system integration
**MUST** implement proper installation and uninstallation procedures
**MUST** support standard system management tools
**MUST** provide health check mechanisms
**MUST** implement backup and recovery procedures
**SHOULD** support containerization for deployment flexibility
**MUST** document operational procedures and troubleshooting
**MUST** implement unit tests for daemon functionality
**MUST** test daemon startup and shutdown procedures
**MUST** validate configuration handling
**MUST** test error handling and recovery scenarios
**MUST** implement integration tests for system interactions
**SHOULD** perform load and stress testing
**MUST** validate security controls and access restrictions

## CLI Requirements

**MUST** follow established CLI conventions and patterns
**MUST** use consistent naming for commands and subcommands
**MUST** implement intuitive and predictable command structures
**MUST** provide meaningful and concise command descriptions
**MUST** use standard verb-noun patterns where appropriate
**SHOULD** follow platform-specific conventions (POSIX, Windows, etc.)
**MUST NOT** use ambiguous or confusing command names
**MUST** implement proper argument validation
**MUST** provide clear help text for all commands and options
**MUST** use consistent flag naming conventions
**MUST** support both short and long form options where appropriate
**MUST** provide default values for optional arguments
**SHOULD** implement argument autocompletion
**MUST NOT** have conflicting or overlapping option names
**MUST** validate all user inputs
**MUST** provide clear error messages for invalid inputs
**MUST** handle edge cases and boundary conditions
**MUST** sanitize inputs to prevent injection attacks
**MUST** implement proper type checking for arguments
**SHOULD** provide input examples in help text
**MUST NOT** trust user inputs without validation
**MUST** produce consistent and predictable output formats
**MUST** use appropriate exit codes for success and failure conditions
**MUST** provide machine-readable output options (JSON, CSV, etc.)
**MUST** implement proper error and warning message formatting
**MUST** support quiet and verbose output modes
**SHOULD** implement progress indicators for long-running operations
**MUST NOT** produce excessive or unnecessary output
**MUST** handle errors gracefully and provide meaningful messages
**MUST** use appropriate exit codes to indicate error types
**MUST** log errors appropriately without exposing sensitive information
**MUST** implement retry mechanisms for transient failures
**MUST** provide guidance for resolving common errors
**SHOULD** implement error recovery where possible
**MUST NOT** crash or terminate unexpectedly
**MUST** provide comprehensive help text accessible via --help or -h
**MUST** document all available commands and subcommands
**MUST** include usage examples in help text
**MUST** document required and optional arguments
**MUST** provide clear descriptions of command behavior
**SHOULD** implement contextual help for complex commands
**MUST** keep help text up to date with command functionality
**MUST** support configuration through files and environment variables
**MUST** validate configuration at startup
**MUST** provide clear precedence rules for configuration sources
**MUST** document all configuration options
**MUST** support configuration file validation
**SHOULD** implement configuration file generation or initialization
**MUST NOT** require manual configuration for basic functionality
**MUST** protect sensitive information in configuration and logs
**MUST** validate and sanitize all inputs
**MUST** implement proper authentication and authorization
**MUST** protect against command injection attacks
**MUST** implement secure handling of credentials and secrets
**SHOULD** support secure credential storage mechanisms
**MUST NOT** expose sensitive information in error messages
**MUST** start up quickly and respond promptly to commands
**MUST** manage memory and other resources efficiently
**MUST** handle large inputs and outputs appropriately
**MUST** implement proper timeout mechanisms
**MUST** avoid unnecessary network calls or file operations
**SHOULD** implement caching where appropriate
**MUST NOT** consume excessive system resources
**MUST** implement unit tests for command logic
**MUST** test argument parsing and validation
**MUST** validate error handling and edge cases
**MUST** test help text generation
**MUST** implement integration tests for end-to-end functionality
**SHOULD** perform cross-platform testing
**MUST** validate exit codes and output formats
**MUST** provide clear installation instructions
**MUST** support standard package managers where applicable
**MUST** document system requirements
**MUST** provide uninstallation procedures
**MUST** support containerization for deployment
**SHOULD** provide binary distributions for major platforms
**MUST** maintain compatibility across versions

## General Development Requirements

**MUST** use maintained, widely-adopted libraries or platform features for infrastructure/commodity capabilities
**MUST NOT** write custom implementations of commodity concerns
**MUST** use libraries first for infrastructure
**MUST NOT** hand-roll HTTP servers/routers, authentication/OAuth/OIDC, cryptography (HMAC, JWT, AES, hashing), database clients/query engines, queueing/scheduling, session management, logging frameworks, configuration loaders, retry backoff engines - use established, maintained solutions
**MUST** Write custom code only for business logic
**MUST** limit bespoke code to domain-specific logic, glue, and adapters
**SHOULD** target files at ≤ 100 lines
**MUST NOT** exceed 200 lines per file
**SHOULD** target functions at ≤ 25 lines
**MUST NOT** exceed 40 lines per function
**SHOULD** maintain cyclomatic complexity at ≤ 10
**MUST NOT** exceed cyclomatic complexity of 15
**MUST** ensure each module has a single responsibility
**MUST** refactor files that exceed hard caps before merge
**MUST** live in separate modules for route wiring, validation, business logic, and IO
**MUST** maintain or improve atomicity, clarity, and safety with every change
**MUST** remove dead code
**MUST** start new or changed business logic with a failing test
**MUST** Use TDD for business logic; don't test third-party libraries
**MUST NOT** unit-test third-party libraries internally; **MUST** mock/stub their edges
**MUST** be green without exception for all tests
**MUST** meet ≥ 80% line and ≥ 70% branch coverage for business logic (or project-defined stricter gates)
**MUST** fix or quarantine flakiness within 48h for deterministic tests and stable CI
**MUST** fix or quarantine any flaky test within 48 hours
**SHOULD** complete unit tests in ≤ 3 minutes in CI
**MUST** Investigate failing tests (test issue vs. code issue)
**MUST** Follow QA best practices (unit, integration, E2E, contract tests)
**MUST** validate all inputs from any source against explicit schemas or rules before use
**MUST** fail fast with clear, safe errors for invalid input
**MUST** apply sanitization/normalization where appropriate
**MUST NOT** swallow or ignore errors/exceptions
**MUST** classify errors, log without sensitive data, surface appropriately, and handle to fail safe (closed)
**MUST NOT** exist in code, history, sample env files, or documentation for secrets
**MUST** use centralized secret storage with rotation and least privilege
**MUST** rotate keys at least quarterly or on incident
**MUST** document rotation plans
**MUST** be secure for all code
**MUST** be secure and follow best practices for databases
**MUST** Apply security best practices (OWASP-grade)
**MUST** update documentation in the same PR as behavior/config changes
**MUST** Maintain human-readable documentation aligned with the project
**MUST** ensure humans can run locally with clear instructions
**MUST** document any new endpoint, env var, flag, migration, or permission in the same PR
**MUST** document key decisions in Architecture Decision Records (ADRs)
**MUST** capture successful patterns and anti-patterns for future reference
**MUST** identify and document risks and mitigations
**MUST** document deploy, rollback, incident response, and on-call procedures in `/docs/runbooks/`
**MUST** have clear run instructions for the application for the SME
**MUST** be able to run tests locally for the SME
**MUST** use latest stable versions for dependencies unless a documented waiver exists
**MUST** address breaking changes
**MUST** commit lockfiles for reproducibility
**MUST** generate a Software Bill of Materials for each release
**MUST** fail CI on High/Critical issues unless a time-boxed waiver is approved
**MUST** be active, maintained, documented, and widely trusted for dependencies
**MUST** satisfy and document licensing, privacy, accessibility, and industry-specific regulations
**MUST** present correlation/request identifiers
**MUST** set appropriate logging levels for environment
**MUST** expose basic availability, latency, and error metrics for services
**MUST** have health/readiness endpoints where applicable
**MUST** log critical actions with who/what/when/where in an immutable or tamper-evident way
**MUST** classify data (e.g., Public/Private/Sensitive) and handle accordingly
**MUST** define and enforce retention periods per data class
**MUST** back up production data at least daily
**MUST** test restores quarterly
**MUST** apply least privilege to databases and storage
**MUST** make sensitive operations auditable
**MUST** have p95 latency and error budgets defined for each critical endpoint/job
**MUST** exist for rate limiting/throttling for public and tenant-scoped entry points
**MUST** be idempotent for all externally visible operations subject to retries
**MUST** be idempotent for external-facing side effects (enforced via keys/sequencing)
**MUST** meet performance benchmarks for core user journeys
**SHOULD** have performance benchmarks for critical paths
**SHOULD** conduct safe, small-scale chaos experiments for critical services
**MUST** meet WCAG AA minimum for UIs
**MUST** satisfy and evidence controls if in scope (e.g., PCI-DSS, SOC 2)
**MUST** document WCAG compliance for UI
**SHOULD** externalize strings where localization is in scope
**MUST** flag-gate new features
**MUST** default flags off
**MUST** default kill switches on and document them
**MUST** Use feature flags to isolate new or risky features
**MUST** consult the latest official docs for any technology before writing or changing code that uses it
**MUST** capture version and links in the PR description
**MUST** Use official documentation (always up front) for libraries and APIs
**MUST** ask clarifying questions and propose options until explicit agreement on the plan when neither SME nor AI is assumed correct
**MUST** Use SME-led development: ask clarifying questions, don't assume
**MUST** Understand the full code context before generating code
**MUST** Keep things DRY (Don't Repeat Yourself)
**MUST** Apply software design patterns to keep code maintainable, extendable, and stable
**MUST** Apply sound architectural principles
**MUST** Use MCP tools when available
**MUST** ensure builds are reproducible (pinned toolchains and lockfiles)
**MUST** not break things, if you break it you fix it — all code must pass tests
**MUST** be production-ready and deployable for all code
**MUST** have a written waiver in the PR description including scope, rationale, compensating controls, expiry date (≤ 30 days), and responsible owner for any deviation from these guardrails
**MUST** track waivers and either resolve or re-approve before expiry
**MUST NOT** merge undeclared deviations
**MUST** block merges if tests are not green or coverage is below gates
**MUST** block merges if atomicity hard caps are exceeded
**MUST** block merges if dependency vulnerability or license checks fail without waiver
**MUST** block merges if linting/static analysis/type checks fail
**MUST** block merges if required docs are missing or out of date
**MUST** block merges if compliance checklist is incomplete (when in scope)
**MUST** block merges if SME local run/test instructions are missing or not updated
**MUST** block merges if required approvals/reviews are absent
**MUST** adhere to language-specific style guides and best practices
**MUST** fully utilize type systems in typed languages
**MUST** run linting tools on all code and address failures before merge
**MUST** use language-specific formatting tools
**MUST** be reviewed for idiomatic usage of the language and frameworks
**MUST NOT** reinvent the wheel
**MUST NOT** merge undeclared deviations

For detailed requirements specific to semantic web implementation, please see:
- [`SEMANTIC_WEB.md`](SEMANTIC_WEB.md) - Schema.org structured data and semantic HTML requirements