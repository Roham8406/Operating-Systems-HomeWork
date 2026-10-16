#!/bin/bash

# Check if both arguments are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Error: Missing arguments."
  echo "Usage: ./compile.sh <JobName> <\"Persian Title\">"
  echo "Example: ./compile.sh HW1 \"تمرین نخست\""
  exit 1
fi

# Write the Persian title into a LaTeX macro file
echo "\newcommand{\HWTitle}{$2}" > current_title.tex

# Compile dynamically
latexmk -pvc -xelatex -shell-escape -jobname="$1" main.tex