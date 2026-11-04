# Experiment 10: Display parent/child process IDs and variable addresses

## Aim
Create a child process and print process IDs and a variable address in both processes.

## Requirements
- Linux/Ubuntu or Ubuntu in VirtualBox
- Bash for shell scripts
- GCC for C programs

## Source file
`parent_child_info.c`

## How to run
```bash
gcc parent_child_info.c -o parent_child_info
./parent_child_info
```

## Explanation
fork() creates a child with a separate process address space. The virtual address may appear the same in both processes, but the memory belongs to separate processes. wait() lets the parent wait for the child.

## Sample output
Output may vary with your username, date, process IDs, memory addresses, and system. Example:

```text
Parent: PID=2500, child PID=2501, address=0x..., value=42
Child: PID=2501, PPID=2500, address=0x..., value=42
```

## Result
The experiment demonstrates the stated shell-programming or operating-system concept.
