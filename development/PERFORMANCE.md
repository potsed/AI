# PERFORMANCE Guardrails

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## Response Time Budgets

- **MUST** define performance budgets for all critical user journeys
- **MUST** set maximum response time targets (e.g., p95 latency < 200ms)
- **MUST** establish error rate budgets (e.g., < 0.1% for critical operations)
- **MUST** monitor actual performance against defined budgets
- **MUST** alert when performance budgets are at 80% utilization
- **MUST** block deployments that exceed performance budgets
- **SHOULD** conduct regular performance budget reviews

## Resource Usage

- **MUST** define CPU and memory limits for all services
- **MUST** monitor resource utilization in production
- **MUST** set alerts for resource usage exceeding 80% of limits
- **MUST** implement auto-scaling for services that exceed resource thresholds
- **MUST NOT** allow services to exceed defined resource limits
- **SHOULD** optimize code to reduce resource consumption
- **MUST** document resource requirements in service documentation

## Caching Strategy

- **MUST** implement caching for frequently accessed data
- **MUST** define cache expiration and invalidation strategies
- **MUST** use appropriate cache levels (local, distributed, CDN)
- **MUST** handle cache miss scenarios gracefully
- **MUST** monitor cache hit ratios and performance
- **MUST NOT** cache sensitive or user-specific data without proper controls
- **SHOULD** implement cache warming for critical data

## Load Testing

- **MUST** perform load testing for all new features
- **MUST** define realistic load testing scenarios based on production metrics
- **MUST** test performance under expected peak loads
- **MUST** identify and address performance bottlenecks before deployment
- **SHOULD** conduct regular load testing for existing features
- **MUST** document load testing results and performance characteristics
- **MUST** establish performance regression testing in CI/CD pipeline

## Query Optimization

- **MUST** optimize database queries to meet response time targets
- **MUST** use database indexing strategies effectively
- **MUST** avoid N+1 query problems
- **MUST** limit result set sizes for large data queries
- **SHOULD** use query profiling tools to identify bottlenecks
- **MUST** cache expensive query results when appropriate
- **MUST NOT** execute queries in loops without explicit justification

## Network Performance

- **MUST** minimize network round trips in critical paths
- **MUST** use connection pooling for external service calls
- **MUST** implement appropriate timeouts for all network operations
- **MUST** use compression for large data transfers
- **SHOULD** colocate services to minimize network latency
- **MUST** implement circuit breakers for external service dependencies
- **MUST** monitor network performance and error rates

## Asynchronous Processing

- **MUST** use asynchronous processing for non-critical operations
- **MUST** implement proper queue management for background jobs
- **MUST** set appropriate worker counts based on workload
- **MUST** handle job failures with retry mechanisms
- **MUST** monitor queue depths and processing times
- **SHOULD** implement priority queues for different job types
- **MUST** provide visibility into background job status

## Monitoring and Metrics

- **MUST** instrument all critical performance metrics
- **MUST** collect and store performance data for trend analysis
- **MUST** create dashboards for performance monitoring
- **MUST** set up alerts for performance degradation
- **SHOULD** implement real-user monitoring (RUM) for frontend performance
- **MUST** track performance across different user segments
- **MUST** conduct regular performance reviews and optimizations