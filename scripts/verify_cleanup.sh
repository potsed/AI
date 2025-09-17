#!/bin/bash

# Verification script for AI directory cleanup
# Verifies that the directory structure is correct after cleanup

echo "=== AI Directory Cleanup Verification ==="
echo

# Check that core directories exist
echo "Checking core directories..."
if [ -d "/Users/squibler/Development/AI/.perseus" ]; then
    echo "  ✓ .perseus directory exists"
else
    echo "  ✗ .perseus directory missing"
fi

if [ -d "/Users/squibler/Development/AI/agents" ]; then
    echo "  ✓ agents directory exists"
else
    echo "  ✗ agents directory missing"
fi

if [ -d "/Users/squibler/Development/AI/scripts" ]; then
    echo "  ✓ scripts directory exists"
else
    echo "  ✗ scripts directory missing"
fi

echo

# Check that core documentation files exist
echo "Checking core documentation files..."
core_files=("README.md" "HATS.md" "GUARDRAILS.md" "PROCESS.md" "RFC2119.md" "PURPOSE.md")
for file in "${core_files[@]}"; do
    if [ -f "/Users/squibler/Development/AI/$file" ]; then
        echo "  ✓ $file exists"
    else
        echo "  ✗ $file missing"
    fi
done

echo

# Check that cleanup summary files exist
echo "Checking cleanup summary files..."
if [ -f "/Users/squibler/Development/AI/ORGANIZATION_SUMMARY.md" ]; then
    echo "  ✓ ORGANIZATION_SUMMARY.md exists"
else
    echo "  ✗ ORGANIZATION_SUMMARY.md missing"
fi

if [ -f "/Users/squibler/Development/AI/FINAL_CLEANUP_SUMMARY.md" ]; then
    echo "  ✓ FINAL_CLEANUP_SUMMARY.md exists"
else
    echo "  ✗ FINAL_CLEANUP_SUMMARY.md missing"
fi

echo

# Check that cleanup script exists and is executable
echo "Checking cleanup script..."
if [ -f "/Users/squibler/Development/AI/scripts/cleanup.sh" ]; then
    echo "  ✓ cleanup.sh exists"
    if [ -x "/Users/squibler/Development/AI/scripts/cleanup.sh" ]; then
        echo "  ✓ cleanup.sh is executable"
    else
        echo "  ✗ cleanup.sh is not executable"
    fi
else
    echo "  ✗ cleanup.sh missing"
fi

echo

# Check that validation script exists and is executable
echo "Checking validation script..."
if [ -f "/Users/squibler/Development/AI/scripts/validate_guardrails.sh" ]; then
    echo "  ✓ validate_guardrails.sh exists"
    if [ -x "/Users/squibler/Development/AI/scripts/validate_guardrails.sh" ]; then
        echo "  ✓ validate_guardrails.sh is executable"
    else
        echo "  ✗ validate_guardrails.sh is not executable"
    fi
else
    echo "  ✗ validate_guardrails.sh missing"
fi

echo

# Count files in agents directory
echo "Checking agents directory contents..."
agent_count=$(ls -1 /Users/squibler/Development/AI/agents/*.md 2>/dev/null | wc -l | tr -d ' ')
if [ "$agent_count" -gt 40 ]; then
    echo "  ✓ agents directory contains $agent_count agent files (expected: 50+)"
else
    echo "  ⚠ agents directory contains $agent_count agent files (expected: 50+)"
fi

echo

# Count files in .perseus directory
echo "Checking .perseus directory contents..."
perseus_count=$(ls -1 /Users/squibler/Development/AI/.perseus/*.md 2>/dev/null | wc -l | tr -d ' ')
if [ "$perseus_count" -gt 5 ]; then
    echo "  ✓ .perseus directory contains $perseus_count artifact files (expected: 10+)"
else
    echo "  ⚠ .perseus directory contains $perseus_count artifact files (expected: 10+)"
fi

echo

# Check that old summary files have been removed
echo "Checking that old summary files have been removed..."
old_files=(
    "API_CONSOLIDATION_EXAMPLE.md"
    "COMPLETE_FILE_INVENTORY.md"
    "COMPLETE_PERSONAS_SUMMARY.md"
    "COMPLETE_STRUCTURE_SUMMARY.md"
    "CONSOLIDATION_CHECKLIST.md"
    "CREATION_SUMMARY.md"
    "FINAL_IMPLEMENTATION_REPORT.md"
    "FINAL_IMPLEMENTATION_SUMMARY.md"
    "HATS_COMPLETE_IMPLEMENTATION_SUMMARY.md"
    "HATS_FRAMEWORK_IMPLEMENTATION_COMPLETE.md"
    "HATS_Framework.md"
    "HATS_IMPLEMENTATION_COMPLETE.md"
    "HATS_IMPLEMENTATION_FINAL_COMPLETION_SUMMARY.md"
    "HATS_IMPLEMENTATION_STATUS.md"
    "ROLES_AND_AI_COORDINATION.md"
    "agents_roles_list.md"
    "hello_world_python_agent_communications.md"
    "persona_to_agent_conversion_summary.md"
    "persona_to_agent_mapping.md"
    "persona_to_agent_mapping_corrected.md"
    "persona_to_agent_mapping_final.md"
    "skill.matrix.roles.md"
)

removed_count=0
for file in "${old_files[@]}"; do
    if [ ! -f "/Users/squibler/Development/AI/$file" ]; then
        removed_count=$((removed_count + 1))
    fi
done

if [ "$removed_count" -eq "${#old_files[@]}" ]; then
    echo "  ✓ All $removed_count old summary files have been removed"
else
    echo "  ⚠ Only $removed_count of ${#old_files[@]} old summary files have been removed"
fi

echo
echo "=== Verification Complete ==="