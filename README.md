# Experiment 8: CPU-bound and I/O-bound processes; observe CPU usage

## Aim
Compare a computation-heavy loop with a script that frequently waits for I/O.

## Requirements
- Linux/Ubuntu or Ubuntu in VirtualBox
- Bash for shell scripts
- GCC for C programs

## Source file
`cpu_bound.c`, `io_bound.sh`

## How to run
```bash
gcc cpu_bound.c -o cpu_bound
./cpu_bound
```
The companion I/O-bound demo is `./io_bound.sh`.
In another terminal, run `top` or `ps -o pid,pcpu,comm -C cpu_bound`. Stop the workload with `Ctrl+C`.

## Explanation
The C program continuously computes and tends to use CPU time. The companion io_bound.sh repeatedly writes a timestamp and sleeps. Use top or ps in another terminal to compare CPU usage; stop with Ctrl+C.

## Sample output
Output may vary with your username, date, process IDs, memory addresses, and system. Example:

```text
CPU-bound process running. Stop with Ctrl+C.
Iterations: 100000000
...
```

## Result
The experiment demonstrates the stated shell-programming or operating-system concept.
