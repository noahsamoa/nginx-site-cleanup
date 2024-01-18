#!/bin/bash

# Check if the sitename is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 sitename"
  exit 1
fi

sitename="$1"
directory="/var/www/$sitename"

# Remove the directory and its contents twice
echo "Removing $directory and its contents..."
rm -rf "$directory"

echo "Removing $directory again..."
rm -rf "$directory"

echo "Cleanup complete for $sitename"
