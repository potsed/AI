# MICROSERVICES Guardrails

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## Service Design

- **MUST** design services around business capabilities
- **MUST** ensure services have high cohesion and low coupling
- **MUST** define clear service boundaries
- **MUST** implement single responsibility principle for services
- **MUST** use domain-driven design principles
- **SHOULD** design services to be loosely coupled
- **MUST NOT** create services with overlapping responsibilities

## Communication Patterns

- **MUST** use appropriate communication mechanisms (sync vs async)
- **MUST** implement circuit breakers for remote calls
- **MUST** use timeouts for all remote calls
- **MUST** implement retry logic with exponential backoff
- **MUST** use message queues for asynchronous communication
- **SHOULD** implement bulkhead patterns for fault isolation
- **MUST NOT** create synchronous dependencies for non-critical operations

## Data Management

- **MUST** use database per service pattern
- **MUST** implement eventual consistency for distributed data
- **MUST** use saga patterns for distributed transactions
- **MUST** implement CQRS where appropriate
- **MUST** handle data ownership and access control
- **SHOULD** use event sourcing for audit trails
- **MUST NOT** share databases between services

## Service Discovery and Configuration

- **MUST** implement service discovery mechanisms
- **MUST** externalize configuration from services
- **MUST** use configuration management systems
- **MUST** implement health check endpoints
- **MUST** use appropriate load balancing strategies
- **SHOULD** implement client-side load balancing
- **MUST** provide service metadata for discovery

## Security

- **MUST** implement end-to-end security
- **MUST** use mutual TLS for service-to-service communication
- **MUST** implement proper authentication and authorization
- **MUST** encrypt data in transit
- **MUST** implement API gateway patterns for external access
- **SHOULD** use zero-trust security models
- **MUST NOT** expose internal services directly to the internet

## Observability

- **MUST** implement distributed tracing
- **MUST** use structured logging
- **MUST** expose metrics for monitoring
- **MUST** implement correlation IDs for request tracking
- **MUST** monitor service dependencies
- **SHOULD** implement real-user monitoring
- **MUST** provide debugging interfaces

## Deployment and Operations

- **MUST** deploy services independently
- **MUST** implement blue-green or canary deployment strategies
- **MUST** use containerization for service deployment
- **MUST** implement health checks and readiness probes
- **MUST** use orchestration platforms
- **SHOULD** implement feature flags for service functionality
- **MUST** automate deployment processes

## Fault Tolerance

- **MUST** implement graceful degradation
- **MUST** use circuit breaker patterns
- **MUST** implement bulkhead patterns
- **MUST** handle partial failures gracefully
- **MUST** implement timeout mechanisms
- **SHOULD** use chaos engineering for resilience testing
- **MUST** implement proper error handling and recovery

## Testing

- **MUST** test services in isolation
- **MUST** implement contract testing between services
- **MUST** test service integration points
- **MUST** simulate network failures in testing
- **MUST** implement consumer-driven contract testing
- **SHOULD** use service virtualization for testing
- **MUST** test observability and monitoring

## Service Evolution

- **MUST** maintain backward compatibility
- **MUST** version APIs appropriately
- **MUST** implement deprecation policies
- **MUST** provide migration paths for breaking changes
- **MUST** document service interfaces and contracts
- **SHOULD** use strangler fig patterns for service replacement
- **MUST** conduct impact analysis for service changes