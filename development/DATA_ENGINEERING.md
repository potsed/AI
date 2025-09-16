# DATA ENGINEERING Guardrails

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## Data Pipeline Design

- **MUST** design pipelines for scalability and reliability
- **MUST** implement idempotent operations
- **MUST** handle data schema evolution gracefully
- **MUST** implement proper error handling and retry mechanisms
- **MUST** design for monitoring and observability
- **SHOULD** use stream processing for real-time requirements
- **MUST NOT** create tightly coupled pipeline components

## ETL/ELT Processes

- **MUST** implement data validation at each stage
- **MUST** handle data quality issues explicitly
- **MUST** implement data lineage tracking
- **MUST** use appropriate data transformation techniques
- **MUST** implement incremental processing where possible
- **SHOULD** use change data capture (CDC) for incremental loads
- **MUST** document ETL/ELT process logic

## Data Quality

- **MUST** define data quality metrics
- **MUST** implement data profiling
- **MUST** validate data against business rules
- **MUST** handle data anomalies appropriately
- **MUST** implement data quality monitoring
- **SHOULD** use automated data quality checks
- **MUST** document data quality issues and resolutions

## Data Storage and Management

- **MUST** choose appropriate storage solutions for use cases
- **MUST** implement data partitioning strategies
- **MUST** use appropriate data formats (Parquet, Avro, etc.)
- **MUST** implement data retention policies
- **MUST** ensure data durability and availability
- **SHOULD** use columnar storage for analytical workloads
- **MUST** implement backup and recovery procedures

## Performance Optimization

- **MUST** optimize data access patterns
- **MUST** implement appropriate indexing strategies
- **MUST** use data compression techniques
- **MUST** optimize resource allocation for workloads
- **MUST** monitor and tune pipeline performance
- **SHOULD** use caching for frequently accessed data
- **MUST** implement query optimization techniques

## Data Security and Privacy

- **MUST** encrypt sensitive data at rest and in transit
- **MUST** implement access controls for data resources
- **MUST** anonymize or pseudonymize personal data
- **MUST** comply with data privacy regulations
- **MUST** audit data access and modifications
- **SHOULD** implement data masking for development environments
- **MUST** implement secure data sharing mechanisms

## Monitoring and Observability

- **MUST** implement pipeline monitoring
- **MUST** track data lineage and provenance
- **MUST** monitor data quality metrics
- **MUST** implement alerting for pipeline failures
- **MUST** log pipeline execution details
- **SHOULD** implement real-time monitoring dashboards
- **MUST** track pipeline performance metrics

## Data Governance

- **MUST** implement metadata management
- **MUST** document data dictionaries and schemas
- **MUST** establish data ownership and stewardship
- **MUST** implement data cataloging
- **MUST** define data lifecycle management policies
- **SHOULD** implement data access logging
- **MUST** establish data quality standards

## Testing and Validation

- **MUST** test data pipelines with realistic data volumes
- **MUST** implement unit tests for transformation logic
- **MUST** validate data outputs against expected results
- **MUST** test error handling scenarios
- **MUST** implement data contract testing
- **SHOULD** use data quality testing frameworks
- **MUST** perform integration testing for pipeline components

## Deployment and Operations

- **MUST** implement CI/CD for data pipelines
- **MUST** use infrastructure as code for data environments
- **MUST** implement rollback procedures for pipeline changes
- **MUST** version control pipeline code and configurations
- **MUST** implement blue-green deployments where possible
- **SHOULD** use containerization for pipeline components
- **MUST** automate pipeline deployment and configuration