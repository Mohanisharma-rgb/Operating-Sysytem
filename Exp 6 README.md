# Experiment 6: Shell script using string tests and menu options

## Aim
Compare strings and select an operation from a simple menu.

## Requirements
- Linux/Ubuntu or Ubuntu in VirtualBox
- Bash for shell scripts
- GCC for C programs

## Source file
`string_menu.sh`

## How to run
```bash
chmod +x *.sh
./string_menu.sh
```

## Explanation
== compares strings, ${#first} returns string length, ${first^^} converts letters to uppercase in Bash, and -z checks whether a string is empty.

## Sample output
Output may vary with your username, date, process IDs, memory addresses, and system. Example:

```text
Enter the first string: hello
Enter the second string: hello
The strings are equal.
Choice [1-3]: 2
Uppercase: HELLO
```

## Result
The experiment demonstrates the stated shell-programming or operating-system concept.
