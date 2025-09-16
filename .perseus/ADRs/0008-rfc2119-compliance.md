# 0008 - RFC 2119 and OASIS Keyword Guidelines Compliance

## Status

Accepted

## Context

The OASIS Keyword Guidelines provide important standards for using RFC 2119 keywords (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL) in technical specifications. These guidelines ensure consistency and clarity in technical documentation.

Key requirements from the OASIS guidelines include:
1. RFC 2119 keywords must be capitalized when used in their normative sense
2. RFC 2119 keywords should only be used in normative sections of documents
3. Each document should include a conformance clause referencing RFC 2119
4. Documents should clearly distinguish between normative and informative content

## Decision

We will ensure that all HI/AI Policies documents comply with RFC 2119 and OASIS Keyword Guidelines:

1. **Continue Current Practice**: Maintain our current practice of capitalizing RFC 2119 keywords and including reference clauses in all guardrail documents.

2. **Explicit Conformance**: Each guardrail document will include an explicit conformance statement:
   ```
   > ## AI Mandatory Compliance
   >
   > THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
   > 
   > All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).
   ```

3. **Normative vs. Informative**: Clearly distinguish between normative requirements (using RFC 2119 keywords) and informative guidance (using lowercase or other formatting).

4. **Section Organization**: Organize documents with clear sections that indicate whether content is normative or informative.

## Consequences

### Easier
- Improved clarity and consistency across all guardrail documents
- Better compliance with industry standards for technical specifications
- Clearer distinction between mandatory requirements and recommendations
- Enhanced credibility and professionalism of the framework

### More Difficult
- Need to review all existing documents for compliance
- Slight overhead in ensuring new documents follow the guidelines
- Need for ongoing maintenance to ensure consistency