#!/bin/bash

# Script to validate that all guardrail documents have the mandatory compliance section
# and follow RFC 2119 guidelines

echo "Validating guardrail documents for RFC 2119 compliance..."

missing_compliance=0
missing_rfc2119_reference=0

# Check root directory documents (excluding RFC2119*.md as they are reference documents)
root_documents=("GUARDRAILS.md" "AI.md" "PROCESS.md")
for doc in "${root_documents[@]}"; do
    if [ -f "$doc" ]; then
        # Check for compliance section
        if grep -q "# AI Mandatory Compliance" "$doc" || grep -q "> ## AI Mandatory Compliance" "$doc"; then
            echo "✓ $doc: Contains mandatory compliance section"
        else
            echo "✗ $doc: MISSING mandatory compliance section"
            missing_compliance=1
        fi
        
        # Check for RFC 2119 reference
        if grep -q "RFC 2119" "$doc"; then
            echo "✓ $doc: References RFC 2119"
        else
            echo "✗ $doc: MISSING RFC 2119 reference"
            missing_rfc2119_reference=1
        fi
    else
        echo "⚠ $doc: File not found"
    fi
done

# Check development directory documents
dev_documents=(
    "development/DATABASE.md"
    "development/PERFORMANCE.md"
    "development/ARCHITECTURE.md"
    "development/DATA_PRIVACY.md"
    "development/API_DESIGN.md"
    "development/INFRASTRUCTURE.md"
    "development/MAINTENANCE.md"
    "development/COMPLIANCE.md"
    "development/TESTING.md"
    "development/VERSION_CONTROL.md"
    "development/CONTAINERIZATION.md"
    "development/CLOUD.md"
    "development/MICROSERVICES.md"
    "development/APPLICATION_SECURITY.md"
    "development/DATA_ENGINEERING.md"
    "development/WEB.md"
    "development/CODE_REVIEW.md"
)

for doc in "${dev_documents[@]}"; do
    if [ -f "$doc" ]; then
        # Check for compliance section
        if grep -q "# AI Mandatory Compliance" "$doc" || grep -q "> ## AI Mandatory Compliance" "$doc"; then
            echo "✓ $doc: Contains mandatory compliance section"
        else
            echo "✗ $doc: MISSING mandatory compliance section"
            missing_compliance=1
        fi
        
        # Check for RFC 2119 reference
        if grep -q "RFC 2119" "$doc"; then
            echo "✓ $doc: References RFC 2119"
        else
            echo "✗ $doc: MISSING RFC 2119 reference"
            missing_rfc2119_reference=1
        fi
    else
        echo "⚠ $doc: File not found"
    fi
done

# Check marketing directory documents
marketing_documents=(
    "marketing/MARKETING.md"
    "marketing/CONTENT_MARKETING.md"
    "marketing/DIGITAL_MARKETING.md"
)

for doc in "${marketing_documents[@]}"; do
    if [ -f "$doc" ]; then
        # Check for compliance section
        if grep -q "# AI Mandatory Compliance" "$doc" || grep -q "> ## AI Mandatory Compliance" "$doc"; then
            echo "✓ $doc: Contains mandatory compliance section"
        else
            echo "✗ $doc: MISSING mandatory compliance section"
            missing_compliance=1
        fi
        
        # Check for RFC 2119 reference
        if grep -q "RFC 2119" "$doc"; then
            echo "✓ $doc: References RFC 2119"
        else
            echo "✗ $doc: MISSING RFC 2119 reference"
            missing_rfc2119_reference=1
        fi
    else
        echo "⚠ $doc: File not found"
    fi
done

# Check RFC2119 reference documents have content
rfc2119_documents=(
    "development/RFC2119_DEVELOPMENT.md"
    "marketing/RFC2119_MARKETING.md"
    "RFC2119_PROCESS.md"
)

for doc in "${rfc2119_documents[@]}"; do
    if [ -f "$doc" ]; then
        # Check that the file has content
        if [ -s "$doc" ]; then
            echo "✓ $doc: Contains RFC2119 requirements"
        else
            echo "✗ $doc: EMPTY RFC2119 requirements file"
        fi
    else
        echo "⚠ $doc: File not found"
    fi
done

if [ $missing_compliance -eq 0 ] && [ $missing_rfc2119_reference -eq 0 ]; then
    echo -e "\n✓ All guardrail documents comply with RFC 2119 guidelines"
    exit 0
else
    echo -e "\n✗ Some guardrail documents do not comply with RFC 2119 guidelines"
    exit 1
fi