# APPLICATION SECURITY Guardrails

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## Authentication

- **MUST** implement strong authentication mechanisms
- **MUST** use multi-factor authentication for sensitive operations
- **MUST** implement secure password policies
- **MUST** use secure session management
- **MUST** implement account lockout mechanisms
- **SHOULD** implement single sign-on (SSO) where appropriate
- **MUST NOT** store passwords in plain text

## Authorization

- **MUST** implement role-based access control (RBAC)
- **MUST** use principle of least privilege
- **MUST** validate permissions at every access point
- **MUST** implement attribute-based access control (ABAC) where appropriate
- **MUST** separate authentication from authorization
- **SHOULD** implement centralized authorization services
- **MUST NOT** hardcode permissions in application logic

## Input Validation

- **MUST** validate all input at the application boundary
- **MUST** use allowlists for input validation
- **MUST** sanitize user input
- **MUST** encode output to prevent injection attacks
- **MUST** validate file uploads
- **SHOULD** use parameterized queries for database access
- **MUST NOT** trust any user input

## Data Protection

- **MUST** encrypt sensitive data at rest
- **MUST** encrypt data in transit using TLS
- **MUST** implement proper key management
- **MUST** use secure random number generation
- **MUST** mask sensitive data in logs
- **SHOULD** implement data loss prevention (DLP)
- **MUST NOT** log sensitive information

## Secure Configuration

- **MUST** externalize configuration from code
- **MUST** use secure secrets management
- **MUST** disable unnecessary services and features
- **MUST** use secure default configurations
- **MUST** implement configuration validation
- **SHOULD** use infrastructure as code for secure configurations
- **MUST NOT** store secrets in source code

## Error Handling and Logging

- **MUST** implement secure error handling
- **MUST** avoid exposing sensitive information in error messages
- **MUST** log security-relevant events
- **MUST** protect logs from unauthorized access
- **MUST** implement log integrity controls
- **SHOULD** use structured logging for security events
- **MUST NOT** log sensitive data

## Cryptography

- **MUST** use industry-standard cryptographic algorithms
- **MUST** use appropriate key lengths
- **MUST** implement secure key storage
- **MUST** use cryptographically secure random number generators
- **MUST** implement proper certificate management
- **SHOULD** use hardware security modules (HSMs) for key management
- **MUST NOT** implement custom cryptographic algorithms

## Security Testing

- **MUST** perform security testing during development
- **MUST** conduct penetration testing regularly
- **MUST** implement security code reviews
- **MUST** use automated security scanning tools
- **MUST** validate third-party components for vulnerabilities
- **SHOULD** implement security unit testing
- **MUST** address security findings promptly

## Secure Development Practices

- **MUST** follow secure coding guidelines
- **MUST** conduct threat modeling for new features
- **MUST** implement security requirements tracing
- **MUST** perform security-focused code reviews
- **MUST** stay updated on security vulnerabilities
- **SHOULD** participate in security training
- **MUST** report security issues through proper channels

## Incident Response

- **MUST** implement security incident response procedures
- **MUST** monitor for security events
- **MUST** maintain security event logs
- **MUST** respond to security incidents promptly
- **MUST** conduct post-incident reviews
- **SHOULD** implement security orchestration and automation
- **MUST** communicate security incidents appropriately