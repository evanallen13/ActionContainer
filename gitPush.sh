#!/bin/bash


if [[ $1 -eq 0 ]] ; then
    echo 'some message'
    exit 1
fi


git add .
git commit -m "$1"
git push origin main
