#!/usr/bin/env bash
set -eu
if [[ $# -ne 1 ]]; then echo "Usage: $0 <path>"; exit 1; fi
path=$1
if [[ -e "$path" ]]; then
  echo "Path exists: $path"
  [[ -f "$path" ]] && echo "Type: regular file"
  [[ -d "$path" ]] && echo "Type: directory"
  [[ -r "$path" ]] && echo "Readable: yes" || echo "Readable: no"
  [[ -w "$path" ]] && echo "Writable: yes" || echo "Writable: no"
else
  echo "Path does not exist: $path"; exit 2
fi
