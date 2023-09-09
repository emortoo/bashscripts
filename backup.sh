#!/bin/bash

# Check if the right number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_to_backup>"
    echo "Example: $0 /path/to/mydir"
    exit 1
fi

# Directory to be backed up
dir_to_backup=$1

# Get the current date in YYYY-MM-DD format
current_date=$(date +"%Y-%m-%d")

# Create backup filename
backup_filename="backup_${current_date}.tar.gz"

# Perform the backup using tar
tar -czf $backup_filename $dir_to_backup

if [ $? -eq 0 ]; then
    echo "Backup successful! Created: $backup_filename"
else
    echo "Backup failed!"
    exit 2
fi
