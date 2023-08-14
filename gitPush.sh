#!/bin/bash

if [ "$1" -eq 0 ]; then
    exit 1
fi

git pull ogirin main
git add .
git commit -m "$1"
git push origin main