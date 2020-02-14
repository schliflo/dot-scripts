#!/bin/bash

# merges the current branch into the specified one and instantly pushes the changes

CURRENT="$(git symbolic-ref --short HEAD)"
TARGET="$1"

if [ -z "$TARGET" ]; then
  echo "target branch not specified"
  exit 1
fi

if [ -z "$(git status --porcelain)" ]; then
  echo "merging ${CURRENT} into ${TARGET}"
  git checkout "$TARGET"
  git pull
  git merge --ff "$CURRENT"
  git push
  git checkout "$CURRENT"
else
  echo "working directory not clean"
  exit 1
fi
