#!/bin/bash

# Whether a new github release of the repository can be created.
#
# $1 -> Git tag name
# $2 -> GitHub repository name

gitTag="$1"
if [ -z "$gitTag" ]; then
    echo "Please set git tag name."
    exit 1
fi

repoName="$2"
if [ -z "$repoName" ]; then
    echo "Please set git repository name."
    exit 1
fi

if gh release view "$gitTag" --repo "$repoName" > /dev/null; then
    echo "$gitTag is already released!"
    exit 1
fi
