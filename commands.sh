#!/usr/bin/env bash
set -eu
name="Student"; a=12; b=5
echo "Hello, $name"
echo "Current date/time: $(date)"
echo "Current user: $(whoami)"
echo "Working directory: $(pwd)"
echo "$a + $b = $((a+b))"
echo "$a - $b = $((a-b))"
echo "Files:"; ls
