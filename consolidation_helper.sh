#!/bin/bash

# HATS Framework Consolidation Script
# This script helps identify and consolidate content from domain directories into persona profiles

echo "HATS Framework Consolidation Helper"
echo "==================================="

echo "This script will help you identify content that should be consolidated from domain directories into persona profiles."
echo ""

# List all domain directories that should be consolidated
DOMAIN_DIRS=(
  "../development"
  "../marketing" 
  "../architecture"
  "../ui_ux"
  "../design"
  "../hr"
  "../finance"
)

echo "Domain directories to be consolidated:"
for dir in "${DOMAIN_DIRS[@]}"; do
  if [ -d "$dir" ]; then
    echo "  - $dir"
  else
    echo "  - $dir (not found)"
  fi
done

echo ""
echo "Before removing these directories, ensure all relevant content has been incorporated into the persona profiles:"
echo ""

PERSONA_PROFILES=(
  "The_Pragmatic_Coder.md"
  "The_Visionary_Architect.md"
  "The_Automation_Specialist.md"
  "The_Quality_Guardian.md"
  "The_User_Experience_Advocate.md"
  "The_Data_Whisperer.md"
  "The_System_Keeper.md"
  "The_Reporter.md"
  "The_Market_Navigator.md"
  "The_Deal_Maker.md"
  "The_Product_Compass.md"
  "The_Operator_Product_Custodian.md"
)

echo "Persona profiles that should contain consolidated content:"
for profile in "${PERSONA_PROFILES[@]}"; do
  if [ -f "$profile" ]; then
    echo "  - $profile"
  else
    echo "  - $profile (not found)"
  fi
done

echo ""
echo "Recommended consolidation steps:"
echo "1. Review each domain directory for relevant RFC2119 requirements"
echo "2. Incorporate those requirements into the appropriate persona profiles"
echo "3. Update persona profiles to reference the consolidated content"
echo "4. Verify that all necessary information has been migrated"
echo "5. Remove the domain directories once consolidation is complete"
echo ""

echo "For example, to review development requirements:"
echo "  cat ../development/RFC2119_DEVELOPMENT.md | grep -A5 -B5 \"MUST\""
echo ""
echo "Then incorporate relevant requirements into The_Pragmatic_Coder.md, The_Visionary_Architect.md, etc."