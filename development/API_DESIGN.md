# API DESIGN Guardrails

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## REST API Conventions

- **MUST** use standard HTTP methods appropriately (GET, POST, PUT, PATCH, DELETE)
- **MUST** use plural nouns for resource names (e.g., /users not /user)
- **MUST** use HTTPS for all API endpoints
- **MUST** use standard HTTP status codes
- **MUST** use JSON as the default response format
- **SHOULD** use nested URLs for hierarchical relationships (e.g., /users/123/orders)
- **MUST NOT** use verbs in URLs for standard CRUD operations

## Versioning Strategy

- **MUST** implement API versioning from the first release
- **MUST** maintain backward compatibility within major versions
- **MUST** use semantic versioning for APIs
- **MUST** document versioning strategy clearly
- **MUST** provide migration paths for breaking changes
- **SHOULD** use URL versioning (e.g., /api/v1/resource)
- **MUST NOT** make breaking changes without version increment

## Documentation Requirements

- **MUST** provide comprehensive API documentation
- **MUST** include example requests and responses
- **MUST** document all error response formats
- **MUST** specify rate limits and quotas
- **MUST** document authentication and authorization requirements
- **SHOULD** provide interactive documentation (e.g., Swagger/OpenAPI)
- **MUST** keep documentation synchronized with API implementation

## Rate Limiting and Throttling

- **MUST** implement rate limiting for all API endpoints
- **MUST** use appropriate rate limits based on resource intensity
- **MUST** return standard HTTP 429 status for rate limit exceeded
- **MUST** include rate limit headers in responses
- **MUST** implement fair usage policies
- **SHOULD** provide different rate limits for different user tiers
- **MUST** log rate limiting events for monitoring

## Error Handling

- **MUST** use consistent error response format
- **MUST** include error codes and human-readable messages
- **MUST** provide error details for debugging when appropriate
- **MUST** not expose sensitive system information in error responses
- **MUST** log errors with sufficient context for troubleshooting
- **SHOULD** include documentation links in error responses
- **MUST** handle validation errors with field-level details

## Authentication and Authorization

- **MUST** use standard authentication mechanisms (OAuth 2.0, JWT, API keys)
- **MUST** validate authentication on every request
- **MUST** implement proper authorization checks
- **MUST** use role-based or attribute-based access control
- **MUST** implement secure token handling
- **SHOULD** support multiple authentication methods
- **MUST NOT** transmit credentials in URL parameters

## Request and Response Design

- **MUST** validate all input parameters
- **MUST** use appropriate HTTP headers
- **MUST** implement proper content negotiation
- **MUST** use standard date/time formats (ISO 8601)
- **MUST** handle pagination for large result sets
- **SHOULD** support field filtering and sorting
- **MUST** provide meaningful response headers

## Security Considerations

- **MUST** implement proper input sanitization
- **MUST** protect against common web vulnerabilities (OWASP Top 10)
- **MUST** implement CORS policies appropriately
- **MUST** use secure headers (Content Security Policy, etc.)
- **MUST** implement proper logging without sensitive data
- **SHOULD** implement API monitoring and anomaly detection
- **MUST** conduct regular security assessments

## Performance Optimization

- **MUST** implement appropriate caching strategies
- **MUST** optimize database queries for API endpoints
- **MUST** use compression for large responses
- **MUST** implement connection pooling
- **SHOULD** use CDNs for static content
- **MUST** monitor API performance metrics
- **MUST** implement efficient data serialization