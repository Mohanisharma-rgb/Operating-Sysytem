# Experiment 9: Observe process memory maps

## Aim
Print addresses for global, stack, and heap data, then inspect the process memory map.

## Requirements
- Linux/Ubuntu or Ubuntu in VirtualBox
- Bash for shell scripts
- GCC for C programs

## Source file
`memory_map.c`

## How to run
```bash
gcc memory_map.c -o memory_map
./memory_map
```
During the 30-second pause, use `cat /proc/PID/maps` or `pmap PID` in another terminal, replacing PID with the printed number.

## Explanation
While the program sleeps, use the printed PID in `cat /proc/PID/maps`, `pmap PID`, or `grep -E 'VmSize|VmRSS' /proc/PID/status`. Memory addresses vary between runs due to ASLR.

## Sample output
Output may vary with your username, date, process IDs, memory addresses, and system. Example:

```text
PID: 2451
Global variable address: 0x...
Local variable address:  0x...
Heap allocation address: 0x...
Sleeping 30 seconds; inspect this PID in another terminal.
```

## Result
The experiment demonstrates the stated shell-programming or operating-system concept.
