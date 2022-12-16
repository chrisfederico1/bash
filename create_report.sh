#!/bin/bash

# Create a report file for a single shipping container
# #Author: Chris


# Exercise: Add a variable called 'directory'
# That determines wher we save our output file


# Exercise : Read the output directory from a command-line argument
# variable for directory

container="$1"
directory="$2"


if [[ ! $1 ]]; then
  echo "Error missing parameter: container name"
  exit 1
fi

if [[ ! $2 ]]; then
  echo "No $directory specified" 
 directory="$HOME/reports"
fi


mkdir -p "$directory"
if grep "$container" shipments.csv > "$directory/$container.csv"
then
  echo Wrote report "$directory/$container.csv"
else
  echo "Container $container not found "
fi

