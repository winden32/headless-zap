#!/bin/bash

set -e

while true; do

  if [ -n "$HEDEF" ]; then
    echo "Target detected from parameters: $HEDEF"
  else
    echo "--------------------------------------------------"
    echo "⚠️ Enter Target!"
    echo "e.g., http://testphp.vulnweb.com"
    echo "--------------------------------------------------"
    read -p "Target URL: " HEDEF
  fi

  if [ -z "$HEDEF" ]; then
    echo "Empty input! Please try again."
    continue
  fi

  # Automatically prepend https:// if http/https protocol is missing
  if [[ ! "$HEDEF" =~ ^https?:// ]]; then
    HEDEF="https://$HEDEF"
  fi

  break

done

echo "Target verified: $HEDEF"
echo "Starting automated security assessment..."

zap-baseline.py \
    -t "$HEDEF" \
    -r report.html

echo "Scan Completed! Report: report.html"