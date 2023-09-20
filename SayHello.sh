#!/bin/bash

repo_owner="evanallen13"
repo_name="ActionContainer"

# response=$(gh issue list -R="$repo_owner/$repo_name" -l=release)
response=$(gh issue list -R="$repo_owner/$repo_name" -l=release)

if [[ -z "$response" ]]; then
    echo "No response received. Check if there are release issues or if 'gh' is properly configured."
    exit 1
fi

if echo "$response" | grep -q "no issues match your search"; then
    echo "IS_RELEASE=false"
else
    echo "IS_RELEASE=true"
fi