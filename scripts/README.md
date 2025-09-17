# Scripts Directory

This directory contains utility scripts for managing the AI project.

## Scripts

### cleanup.sh
- Removes development and summary files that are no longer needed
- Preserves core documentation, agents, and project artifacts
- Should be run after major development phases to clean up temporary files

### validate_guardrails.sh
- Validates that code and documentation comply with project guardrails
- Checks for adherence to RFC2119 requirements
- Ensures security and quality standards are met

### consolidation_helper.sh
- Helper script for domain consolidation processes
- Assists with moving domain-specific requirements into persona profiles
- Supports the HATS framework domain consolidation approach

### verify_cleanup.sh
- Verifies that the directory cleanup was successful
- Checks that core components are present and functional
- Validates that development artifacts have been removed

## Usage

All scripts are executable and can be run directly:

```bash
./cleanup.sh
./validate_guardrails.sh
./consolidation_helper.sh
./verify_cleanup.sh
```

## Maintenance

Scripts should be updated as needed to reflect changes in project structure or requirements.