#!/usr/bin/env bash
set -eu
read -r -p "Enter the first string: " first
read -r -p "Enter the second string: " second
if [[ "$first" == "$second" ]]; then echo "The strings are equal."
else echo "The strings are different."; fi
echo "1) Show first string length"
echo "2) Convert first string to uppercase"
echo "3) Check whether first string is empty"
read -r -p "Choice [1-3]: " choice
case "$choice" in
  1) echo "Length: ${#first}" ;;
  2) printf 'Uppercase: %s\n' "${first^^}" ;;
  3) [[ -z "$first" ]] && echo "String is empty." || echo "String is not empty." ;;
  *) echo "Invalid choice."; exit 1 ;;
esac
