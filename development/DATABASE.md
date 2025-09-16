# DATABASE Guardrails

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## Schema Design

- **MUST** design schemas with appropriate normalization (typically 3NF)
- **MUST NOT** duplicate data without explicit justification
- **MUST** define primary keys for all tables
- **MUST** establish foreign key relationships with appropriate referential integrity
- **MUST** use appropriate data types for all columns
- **SHOULD** use consistent naming conventions across all database objects
- **MUST** document all schema design decisions in ADRs

## Indexing Strategy

- **MUST** create indexes on all foreign key columns
- **MUST** create indexes on columns frequently used in WHERE clauses
- **MUST** create composite indexes for multi-column queries
- **MUST** regularly review and remove unused indexes
- **SHOULD** use covering indexes for frequently executed queries
- **MUST** consider index impact on write performance
- **MUST NOT** over-index tables

## Query Optimization

- **MUST** write queries that leverage indexes effectively
- **MUST** avoid SELECT * in production queries
- **MUST** use LIMIT clauses for large result sets
- **MUST** avoid N+1 query problems
- **MUST** use EXPLAIN or equivalent to analyze query execution plans
- **SHOULD** use query profiling tools to identify bottlenecks
- **MUST** parameterize all queries to prevent SQL injection

## Connection Management

- **MUST** use connection pooling for database connections
- **MUST** properly close database connections after use
- **MUST** handle connection failures gracefully with retry logic
- **MUST** configure appropriate connection timeout values
- **SHOULD** implement connection monitoring and alerting
- **MUST** use least privilege principles for database user accounts
- **MUST NOT** hardcode database credentials in application code

## Transactions and Consistency

- **MUST** use transactions for multi-step operations that require atomicity
- **MUST** keep transactions as short as possible
- **MUST** handle transaction rollback scenarios explicitly
- **MUST** use appropriate isolation levels for consistency requirements
- **SHOULD** implement deadlock detection and handling
- **MUST** validate data integrity within transactions
- **MUST NOT** mix unrelated operations in single transactions

## Migrations

- **MUST** write database migrations that are idempotent
- **MUST** test migrations in non-production environments first
- **MUST** create rollback procedures for all migrations
- **MUST** version control all migration scripts
- **MUST** document migration dependencies and execution order
- **SHOULD** schedule maintenance windows for complex migrations
- **MUST** backup databases before running migrations in production

## Backup and Recovery

- **MUST** implement regular automated backups
- **MUST** test backup restoration procedures regularly
- **MUST** store backups in geographically separate locations
- **MUST** encrypt backups containing sensitive data
- **MUST** define and document recovery time objectives (RTO)
- **MUST** define and document recovery point objectives (RPO)
- **SHOULD** implement point-in-time recovery capabilities

## Monitoring and Performance

- **MUST** monitor database performance metrics continuously
- **MUST** set up alerting for critical database issues
- **MUST** track slow query logs
- **SHOULD** implement database-specific monitoring dashboards
- **MUST** monitor connection pool usage
- **MUST** track database growth and capacity
- **SHOULD** conduct regular performance reviews