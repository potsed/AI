# CONTAINERIZATION Guardrails

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## Dockerfile Best Practices

- **MUST** use official base images when available
- **MUST** specify exact image versions (no latest tags)
- **MUST** run containers as non-root users
- **MUST** use multi-stage builds for production images
- **MUST** minimize the number of layers in Dockerfiles
- **MUST** combine related commands to reduce layers
- **MUST NOT** include secrets or sensitive data in Dockerfiles

## Image Security

- **MUST** scan images for vulnerabilities regularly
- **MUST** use distroless or minimal base images
- **MUST** remove unnecessary packages and tools
- **MUST** run security updates on base images
- **MUST** implement image signing and verification
- **SHOULD** use image vulnerability scanning tools
- **MUST NOT** run privileged containers in production

## Image Optimization

- **MUST** minimize image size
- **MUST** use .dockerignore files
- **MUST** leverage Docker layer caching
- **MUST** clean up temporary files in the same layer
- **MUST** use appropriate base image types (alpine, slim, etc.)
- **SHOULD** use BuildKit for improved build performance
- **MUST** avoid installing unnecessary dependencies

## Container Runtime Configuration

- **MUST** set appropriate resource limits (CPU, memory)
- **MUST** configure health checks for all services
- **MUST** use read-only root filesystems when possible
- **MUST** drop unnecessary capabilities
- **MUST** configure appropriate restart policies
- **SHOULD** use user namespaces for additional isolation
- **MUST NOT** expose unnecessary ports

## Environment Variables and Configuration

- **MUST** externalize configuration through environment variables
- **MUST** validate required environment variables at startup
- **MUST** provide default values for non-sensitive configuration
- **MUST** document all environment variables
- **MUST** use secrets management for sensitive configuration
- **SHOULD** use configuration files mounted as volumes for complex configuration
- **MUST NOT** hardcode environment-specific values

## Networking and Service Discovery

- **MUST** use container networking for service communication
- **MUST** implement service discovery mechanisms
- **MUST** configure appropriate network policies
- **MUST** use internal networking for service-to-service communication
- **MUST** expose only necessary ports
- **SHOULD** use service meshes for complex microservices
- **MUST NOT** rely on container IP addresses

## Storage and Persistence

- **MUST** use volumes for persistent data
- **MUST** separate application code from data
- **MUST** implement proper backup strategies for volumes
- **MUST** use appropriate volume drivers
- **MUST** configure proper file permissions
- **SHOULD** use init containers for volume preparation
- **MUST NOT** store persistent data in containers

## Monitoring and Logging

- **MUST** emit logs to stdout/stderr
- **MUST** use structured logging formats
- **MUST** implement health check endpoints
- **MUST** expose metrics endpoints
- **MUST** use appropriate log levels
- **SHOULD** implement distributed tracing
- **MUST** monitor container resource usage

## Image Management

- **MUST** tag images with semantic versioning
- **MUST** store images in secure registries
- **MUST** implement image retention policies
- **MUST** scan images before deployment
- **MUST** sign production images
- **SHOULD** use image promotion between environments
- **MUST** document image creation and usage