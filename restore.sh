#!/bin/bash
SRC="$1"
if [ -z "$SRC" ] || [ ! -d "$SRC" ]; then
  echo "Usage: bash restore.sh snapshots/TIMESTAMP_label"
  exit 1
fi
cp -r "$SRC/data" . 2>/dev/null
cp -r "$SRC/theme" . 2>/dev/null
cp -r "$SRC/_includes" . 2>/dev/null
echo "Restored from $SRC"
