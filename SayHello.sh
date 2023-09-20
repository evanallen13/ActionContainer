#!/bin/bash

repo_owner="evanallen13"
repo_name="ActionContainer"

response=$(gh issue list -R="$repo_owner/$repo_name" -s="open" -l=bug)

if echo "$response" | grep -q "no issues match your search"; then
    echo "No ISSUES"
else
    echo $response
fi
