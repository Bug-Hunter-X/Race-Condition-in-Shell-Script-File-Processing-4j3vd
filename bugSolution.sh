#!/bin/bash

# This script processes files sequentially, avoiding the race condition

find . -name "*.txt" -print0 | while IFS= read -r -d $'\0' file; do
  # Process each file sequentially
  echo "Processing: $file"
  # Simulate some file processing
  sleep 0.1
done

echo "Done"