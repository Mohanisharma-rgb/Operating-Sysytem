#!/usr/bin/env bash
set -eu
data_file="marks.txt"
cat > "$data_file" <<'DATA'
Asha 82
Ravi 67
Neha 91
Kabir 54
DATA
echo "Original data:"; cat "$data_file"
echo "Number of records:"; wc -l < "$data_file"
echo "Sorted records:"; sort "$data_file"
echo "Marks >= 80:"; awk '$2 >= 80 { print $1, $2 }' "$data_file"
if [[ -f "$data_file" && -r "$data_file" ]]; then
  echo "$data_file exists and is readable."
fi
