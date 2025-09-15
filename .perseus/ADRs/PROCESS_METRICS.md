# Process Metrics

This document defines the key process metrics that should be tracked to measure the effectiveness of the Human-AI software delivery process.

## Lead Time

**Definition**: Time from outcome definition to production deployment
**Target**: Minimize while maintaining quality
**Measurement**: Track from OUTCOMES.yaml creation to successful production deployment

## Slice Completion Time

**Definition**: Average time to complete a vertical slice
**Target**: 3-7 days per slice as defined in the process
**Measurement**: Time from slice start to completion (demo & measure phase)

## Rework Rate

**Definition**: Percentage of slices requiring significant changes after initial completion
**Target**: Minimize through better clarification and testing
**Measurement**: Track slices that require major modifications after initial "Definition of Done"

## Test Coverage

**Definition**: Percentage of business logic covered by automated tests
**Target**: ≥ 80% line coverage, ≥ 70% branch coverage for business logic
**Measurement**: Automated coverage reports in CI pipeline

## Tracking Methods

- Update OUTCOMES.yaml with progress vs targets
- Maintain a process metrics dashboard
- Review metrics during weekly review cadence
- Use metrics to identify process improvement opportunities

## Using Metrics for Improvement

- High rework rates may indicate need for better clarification phase
- Long lead times may indicate bottlenecks in review or deployment
- Low test coverage may indicate need for better TDD practices
- Inconsistent slice completion times may indicate sizing issues