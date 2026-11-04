#!/usr/bin/env bash
set -eu
mkdir -p os_lab_demo
cd os_lab_demo
printf 'Operating System Lab\nBash commands\nProcess management\n' > notes.txt
echo "Current directory:"; pwd
echo "Files:"; ls -la
echo "Contents:"; cat notes.txt
echo "Search for process:"; grep -in process notes.txt
echo "Line count through a pipe:"; cat notes.txt | wc -l
cp notes.txt notes-copy.txt
mv notes-copy.txt backup.txt
echo "Final files:"; ls -1
