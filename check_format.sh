#!/bin/bash

changed_files=$(git diff --cached --name-only --diff-filter=ACM | grep '\.txt$')

for file in $changed_files; do
  if ! [[ "$file" =~ \.txt$ ]]; then
    echo "Error: file $file does not match the .txt format."
    exit 1
  fi
done

echo "Every file matches format"
exit 0