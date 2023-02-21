#!/usr/bin/env sh

# Traverse the files in a directory
# making a distinction between files and directories

cd test

for item in *; do
    if [ -f "${item}" ]; then
        echo "f: ${item}";
    else
        if [ -d "${item}" ]; then
            echo "d: ${item}";
        else
            echo "s: ${item}";
        fi
    fi
done

cd ..
