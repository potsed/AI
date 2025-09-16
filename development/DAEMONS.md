# DAEMONS Guardrails

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## Daemon Design Principles

- **MUST** design daemons to run continuously without user intervention
- **MUST** implement proper signal handling for graceful shutdown
- **MUST** handle process forking appropriately for daemonization
- **MUST** implement proper logging mechanisms
- **MUST** handle configuration through files or environment variables
- **SHOULD** implement health check endpoints or mechanisms
- **MUST NOT** require interactive user input during normal operation

## Process Management

- **MUST** implement proper PID file management
- **MUST** ensure only one instance of the daemon runs at a time
- **MUST** handle process restarts gracefully
- **MUST** implement proper error handling and recovery
- **MUST** use appropriate process priorities and resource limits
- **SHOULD** implement process monitoring and alerting
- **MUST NOT** leave zombie processes

## Logging and Monitoring

- **MUST** implement structured logging
- **MUST** log to appropriate facilities (syslog, files, etc.)
- **MUST** implement log rotation to prevent disk exhaustion
- **MUST** include timestamp and severity level in all log entries
- **MUST** avoid logging sensitive information
- **SHOULD** implement log aggregation for centralized monitoring
- **MUST** provide sufficient logging for debugging and auditing

## Security Considerations

- **MUST** run with minimal required privileges
- **MUST** implement proper file and directory permissions
- **MUST** validate and sanitize all inputs
- **MUST** protect configuration files from unauthorized access
- **MUST** implement secure communication channels when needed
- **SHOULD** implement authentication and authorization for management interfaces
- **MUST NOT** run as root unless absolutely necessary

## Resource Management

- **MUST** implement proper memory management to prevent leaks
- **MUST** handle file descriptor management appropriately
- **MUST** implement resource limits to prevent system exhaustion
- **MUST** handle network connections efficiently
- **MUST** implement proper garbage collection or memory cleanup
- **SHOULD** monitor resource usage and performance metrics
- **MUST NOT** consume excessive system resources

## Configuration Management

- **MUST** support configuration through files
- **MUST** validate configuration parameters at startup
- **MUST** provide default values for optional configuration
- **MUST** support configuration reloading without restart when possible
- **MUST** document all configuration options
- **SHOULD** support environment variable overrides
- **MUST NOT** hardcode configuration values

## Error Handling and Recovery

- **MUST** implement comprehensive error handling
- **MUST** handle unexpected conditions gracefully
- **MUST** implement retry mechanisms for transient failures
- **MUST** provide meaningful error messages
- **MUST** implement circuit breaker patterns for external dependencies
- **SHOULD** implement self-healing mechanisms
- **MUST NOT** crash or terminate unexpectedly

## Deployment and Operations

- **MUST** provide systemd unit files or equivalent for system integration
- **MUST** implement proper installation and uninstallation procedures
- **MUST** support standard system management tools
- **MUST** provide health check mechanisms
- **MUST** implement backup and recovery procedures
- **SHOULD** support containerization for deployment flexibility
- **MUST** document operational procedures and troubleshooting

## Testing and Validation

- **MUST** implement unit tests for daemon functionality
- **MUST** test daemon startup and shutdown procedures
- **MUST** validate configuration handling
- **MUST** test error handling and recovery scenarios
- **MUST** implement integration tests for system interactions
- **SHOULD** perform load and stress testing
- **MUST** validate security controls and access restrictions