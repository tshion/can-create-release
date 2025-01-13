#!/bin/bash

# Whether a new github release of the repository can be created.
#
# $1 -> Tag name you want to release
# $2 -> Repository name with owner. For example, tshion/can-create-release

gitTag="$1"
if [ -z "$gitTag" ]; then
    echo "Please set tag name."
    exit 1
fi

repoName="$2"
if [ -z "$repoName" ]; then
    echo "Please set repository name."
    exit 1
fi

if gh release view "$gitTag" --repo "$repoName" > /dev/null; then
    echo "$gitTag is already released!"
    exit 1
fi
