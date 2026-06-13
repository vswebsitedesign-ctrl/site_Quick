#!/bin/bash
LABEL="${1:-snapshot}"
TS=$(date +%Y%m%d_%H%M%S)
DIR="snapshots/${TS}_${LABEL// /_}"
 DIR="${DIR//\//_}"
mkdir -p "$DIR"
cp -r data theme _includes "$DIR/" 2>/dev/null
echo "Snapshot saved to $DIR"
