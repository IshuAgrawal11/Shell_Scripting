#!/bin/bash

src=$1
dest=$2
timestamp=$(date +%Y-%m-%d_%H-%M)
backup_file="$dest/backup-$timestamp.zip"

# 1. Create the backup
echo "Creating backup: $backup_file"
zip -rq "$backup_file" "$src"
aws s3 sync "$des"t s3://backup-shell-devops-linux
# 2. Check if the backup command succeeded
if [ $? -eq 0 ]; then
    echo "Backup created successfully at $timestamp."
else
    echo "ERROR: Backup failed! Check if source exists and you have permissions."
    exit 1
fi

# 3. Cleanup: Delete backups older than 7 days
echo "Cleaning up old backups in $dest..."
find "$dest" -name "backup-*.zip" -mtime +7 -exec rm {} \;

if [ $? -eq 0 ]; then
    echo "Cleanup complete."
else
    echo "Warning: Cleanup encountered an issue."
fi
echo "All tasks finished."
