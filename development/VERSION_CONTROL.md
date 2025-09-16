# VERSION CONTROL Guardrails

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## Branching Strategy

- **MUST** follow the established branching strategy (e.g., GitFlow, GitHub Flow, Trunk-Based Development)
- **MUST** create feature branches from the main branch
- **MUST** delete feature branches after merging
- **MUST** use descriptive branch names (e.g., feature/user-authentication)
- **MUST** regularly sync feature branches with the main branch
- **SHOULD** use short-lived feature branches (less than 3 days)
- **MUST NOT** commit directly to the main branch

## Commit Message Conventions

- **MUST** follow conventional commit message format
- **MUST** use present tense in commit messages
- **MUST** capitalize the first letter of commit messages
- **MUST** keep commit messages under 72 characters
- **MUST** use blank line between subject and body
- **MUST** reference issue numbers in commit messages
- **SHOULD** explain the "why" not just the "what" in commit messages

## Code Review Process

- **MUST** create pull requests for all changes
- **MUST** have at least one approval before merging
- **MUST** address all review comments before merging
- **MUST** run all tests successfully before requesting review
- **MUST** keep pull requests small and focused
- **SHOULD** assign appropriate reviewers based on expertise
- **MUST NOT** merge pull requests with failing checks

## Merge Strategies

- **MUST** use fast-forward merges when possible
- **MUST** use squash merges for feature branches
- **MUST** preserve commit history for significant changes
- **MUST** resolve merge conflicts before merging
- **MUST** verify changes after merge
- **SHOULD** use merge commits for significant releases
- **MUST NOT** rewrite public commit history

## Repository Organization

- **MUST** maintain a clean project root directory
- **MUST** use appropriate .gitignore files
- **MUST** document repository structure
- **MUST** keep sensitive information out of the repository
- **MUST** use submodules for external dependencies when appropriate
- **SHOULD** use meaningful directory structures
- **MUST NOT** commit generated files

## Tagging and Release Management

- **MUST** use semantic versioning for releases
- **MUST** create annotated tags for releases
- **MUST** document release notes for each tag
- **MUST** follow established release process
- **MUST** verify releases before publishing
- **SHOULD** use pre-release tags for beta versions
- **MUST NOT** modify existing tags

## History Management

- **MUST** maintain a clean, linear history when possible
- **MUST** avoid unnecessary merge commits
- **MUST** write descriptive commit messages
- **MUST** preserve important historical context
- **MUST** use revert commits for undoing changes
- **SHOULD** use interactive rebasing for cleaning up history
- **MUST NOT** use force push on shared branches

## Collaboration Practices

- **MUST** communicate with team before large changes
- **MUST** respect team conventions and standards
- **MUST** provide context in pull requests
- **MUST** respond to review comments promptly
- **MUST** test changes in isolation before merging
- **SHOULD** pair program for complex changes
- **MUST NOT** ignore failing tests or checks