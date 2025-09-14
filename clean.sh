#!/bin/sh

VERSI=$(grep 'versi-update=' ./versi | cut -d'=' -f2)
git checkout --orphan new-branch
git add -A
git commit -m "stockify $VERSI"
git branch -D main
git branch -m main
git push -f origin main