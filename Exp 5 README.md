# Experiment 5: Shell script to display and filter file contents

## Aim
Display file contents, search for matching lines, and count lines.

## Requirements
- Linux/Ubuntu or Ubuntu in VirtualBox
- Bash for shell scripts
- GCC for C programs

## Source file
`filter_text.sh`

## How to run
```bash
chmod +x *.sh
./filter_text.sh sample.txt process
```
First create a test file: `printf 'Process management\nMemory management\nprocess scheduling\n' > sample.txt`.

## Explanation
cat displays a file, grep -in searches case-insensitively and prints line numbers, and wc -l counts lines. The script checks its arguments first.

## Sample output
Output may vary with your username, date, process IDs, memory addresses, and system. Example:

```text
$ printf 'Process management\nMemory management\nprocess scheduling\n' > sample.txt
$ ./filter_text.sh sample.txt process
--- Matching lines ---
1:Process management
3:process scheduling
--- Line count ---
3
```

## Result
The experiment demonstrates the stated shell-programming or operating-system concept.
