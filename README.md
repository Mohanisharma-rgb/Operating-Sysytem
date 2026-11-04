# Experiment 11: Create a child process using the fork() system call

## Aim
Demonstrate how fork() creates a child and how the parent and child can be identified.

## Requirements
- Linux/Ubuntu or Ubuntu in VirtualBox
- Bash for shell scripts
- GCC for C programs

## Source file
`fork_demo.c`

## How to run
```bash
gcc fork_demo.c -o fork_demo
./fork_demo
```

## Explanation
fork() returns -1 on failure, 0 in the child, and the child's PID in the parent. Output order can vary; wait(NULL) lets the parent wait for child termination.

## Sample output
Output may vary with your username, date, process IDs, memory addresses, and system. Example:

```text
Parent process: PID=2600, child PID=2601
Child process: PID=2601, parent PID=2600
Parent: child process has finished.
```

## Result
The experiment demonstrates the stated shell-programming or operating-system concept.
