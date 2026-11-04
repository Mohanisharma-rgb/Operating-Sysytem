#!/usr/bin/env bash
set -eu
out="io_demo.txt"
echo "I/O-bound demonstration. Stop with Ctrl+C."
while true; do
  printf 'Timestamp: %s\n' "$(date '+%F %T')" >> "$out"
  sleep 1
done
