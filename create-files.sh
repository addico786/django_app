#!/bin/bash

echo "Enter the file names (separated by spaces):"
read -p "Enter the file names: " names

for name in $names; do
    if [[ $name ]]; then
        touch "$name.tf"
    else
        echo "Enter a valid name"
    fi
done