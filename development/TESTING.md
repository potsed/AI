# TESTING Guardrails

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## Test Pyramid Implementation

- **MUST** follow the test pyramid approach (unit > integration > E2E)
- **MUST** maintain appropriate ratios between test types (70% unit, 20% integration, 10% E2E)
- **MUST** write unit tests before implementation code (TDD)
- **MUST** ensure unit tests do not require external dependencies
- **MUST** implement integration tests for service boundaries
- **MUST** limit E2E tests to critical user journeys
- **SHOULD** use contract testing for service-to-service interactions

## Test Design and Structure

- **MUST** follow Arrange-Act-Assert pattern in test structure
- **MUST** name tests descriptively (given-when-then format)
- **MUST** test one behavior per test case
- **MUST** avoid testing implementation details in unit tests
- **MUST** use test data builders for complex test data
- **SHOULD** use factory functions for test data creation
- **MUST NOT** share state between test cases

## Test Data Management

- **MUST** use deterministic test data
- **MUST** avoid test data dependencies on external systems
- **MUST** clean up test data after test execution
- **MUST** use test data that clearly represents test scenarios
- **MUST** avoid using production data in tests
- **SHOULD** use data anonymization techniques when real data is needed
- **MUST** version test data schemas with application schemas

## Test Environment Management

- **MUST** maintain consistency between test environments
- **MUST** use dedicated test environments separate from development
- **MUST** reset test environments between test runs
- **MUST** document test environment setup procedures
- **MUST** use containerization for test environment consistency
- **SHOULD** implement test environment as code
- **MUST NOT** allow test environments to affect each other

## Test Automation

- **MUST** automate all regression tests
- **MUST** run tests in CI/CD pipeline
- **MUST** fail builds when tests fail
- **MUST** provide clear failure messages for failing tests
- **MUST** maintain test execution time within acceptable limits
- **SHOULD** parallelize test execution where possible
- **MUST** monitor test execution metrics

## Test Coverage and Quality

- **MUST** maintain minimum 80% line coverage for business logic
- **MUST** maintain minimum 70% branch coverage for business logic
- **MUST** measure and report test coverage
- **MUST** review coverage gaps with team
- **MUST** address coverage gaps within one sprint
- **SHOULD** use mutation testing to validate test quality
- **MUST NOT** write tests solely to increase coverage metrics

## Test Maintenance

- **MUST** refactor tests when refactoring production code
- **MUST** remove obsolete tests when removing functionality
- **MUST** update tests when requirements change
- **MUST** document test design decisions
- **MUST** review and update tests regularly
- **SHOULD** eliminate test code duplication
- **MUST** maintain test readability and simplicity

## Test Performance

- **MUST** keep unit tests under 100ms execution time
- **MUST** keep integration tests under 1 second execution time
- **MUST** keep E2E tests under 10 seconds execution time
- **MUST** identify and optimize slow tests
- **MUST** run fast tests before slow tests
- **SHOULD** use test parallelization
- **MUST** monitor test execution performance

## Test Tools and Frameworks

- **MUST** use project-standard testing frameworks
- **MUST** use appropriate assertion libraries
- **MUST** use mocking frameworks for unit tests
- **MUST** use test runners with reporting capabilities
- **MUST** integrate testing tools with IDEs
- **SHOULD** use property-based testing where appropriate
- **MUST** document testing tool configurations