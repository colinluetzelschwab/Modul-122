#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "2 arguments required"
    exit 1
fi
fileOne=$1
fileTwo=$2
if [ ! -f "$fileTwo" ] || [ ! -f "$fileOne" ]; then
    echo "file not found"
    exit 1
fi
diffs=0
while
  IFS= read -r lineFileOne &&
  IFS= read -r lineFileTwo <&3
do
  if [ "$lineFileOne" != "$lineFileTwo" ]; then
    ((diffs+=1))
  fi
done < "$fileOne" 3<"$fileTwo"
echo "$diffs"