#!/bin/bash

# Cleanup script for AI directory
# Removes development/summary files that are no longer needed

echo "Starting cleanup of AI directory..."

# List of files to remove
files_to_remove=(
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

# Remove files
for file in "${files_to_remove[@]}"; do
    if [ -f "/Users/squibler/Development/AI/$file" ]; then
        echo "Removing $file..."
        rm "/Users/squibler/Development/AI/$file"
    else
        echo "File $file not found, skipping..."
    fi
done

echo "Cleanup complete!"
echo "The following core files have been preserved:"
echo "- README.md"
echo "- HATS.md"
echo "- GUARDRAILS.md"
echo "- PROCESS.md"
echo "- RFC2119.md"
echo "- PURPOSE.md"
echo "- ORGANIZATION_SUMMARY.md (this summary)"
echo ""
echo "The following directories have been preserved:"
echo "- .perseus/ (project artifacts)"
echo "- agents/ (AI personas)"
echo "- scripts/ (utility scripts)"