#!/bin/bash
# Simple Backup Script

# Source and Destination
SRC="/home/user/mydata"
DEST="/home/user/backup"

# Create destination folder if it doesn’t exist
mkdir -p "$DEST"

# Copy files recursively
cp -r "$SRC" "$DEST"

# Check if copy was successful
if [ $? -eq 0 ]; then
    echo "✅ Backup created at $DEST on $(date)"
    ls -lrth "$DEST"
else
    echo "❌ Backup failed!"44
    exit 1
fi
