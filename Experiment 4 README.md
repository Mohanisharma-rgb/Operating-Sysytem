# Experiment 4: Shell script using command-line arguments and file checks

## Aim
Learn how a shell script receives arguments and checks a file or directory.

## Requirements
- Linux/Ubuntu or Ubuntu in VirtualBox
- Bash for shell scripts
- GCC for C programs

## Source file
`file_info.sh`

## How to run
```bash
chmod +x *.sh
./file_info.sh README.md
```
Try `./file_info.sh /etc/passwd` or `./file_info.sh missing.txt`.

## Explanation
$# gives the number of arguments and $1 gives the first argument. File tests check existence, type, readability, and writability.

## Sample output
Output may vary with your username, date, process IDs, memory addresses, and system. Example:

```text
Path exists: README.md
Type: regular file
Readable: yes
Writable: yes
```

## Result
The experiment demonstrates the stated shell-programming or operating-system concept.
