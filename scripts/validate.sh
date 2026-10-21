#!/bin/sh
set -eu

echo "Running project validation inside Docker..."

for file in README.md tasks.md docs/workflow.md; do
  if [ ! -s "$file" ]; then
    echo "Validation failed: $file is missing or empty."
    exit 1
  fi
  echo "Found $file"
done

grep -q "Workflow practiced" README.md
grep -q "Definition of done" tasks.md

echo "Validation passed: required project documentation is present and contains expected sections."
