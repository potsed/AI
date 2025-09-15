# Architecture Decision Records (ADRs)

This directory contains Architecture Decision Records (ADRs) that document important architectural decisions made during the project.

## What is an ADR?

An ADR is a document that captures an important architectural decision made along with its context and consequences. ADRs help teams understand why certain decisions were made and provide a historical record for future reference.

## ADR Structure

Each ADR follows a standard format:
- **Title**: Brief, descriptive title
- **Status**: Proposed, Accepted, Rejected, Deprecated, Superseded
- **Context**: The issue motivating the decision
- **Decision**: The change being proposed
- **Consequences**: The resulting benefits and drawbacks

## Templates

- [0000-template.md](0000-template.md) - Template for new ADRs
- [RISKS.md](RISKS.md) - Risk register
- [PATTERNS.md](PATTERNS.md) - Implementation patterns and anti-patterns

## Process

1. Copy the template to a new file with a sequential number and descriptive name
2. Fill in the ADR details
3. Submit as part of the pull request for the feature that implements the decision
4. Reference the ADR in the PR description