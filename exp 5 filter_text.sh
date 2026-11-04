#!/usr/bin/env bash
set -eu
if [[ $# -ne 2 ]]; then echo "Usage: $0 <file> <pattern>"; exit 1; fi
file=$1; pattern=$2
if [[ ! -f "$file" ]]; then echo "Error: not a regular file"; exit 2; fi
echo "--- Full file ---"; cat -- "$file"
echo "--- Matching lines ---"
grep -in -- "$pattern" "$file" || {
  status=$?
  if [[ $status -eq 1 ]]; then echo "No matching lines found."; else exit "$status"; fi
}
echo "--- Line count ---"; wc -l < "$file"
