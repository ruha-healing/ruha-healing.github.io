#!/bin/sh

# If a command fails then the deploy stops
set -e

git add -A .

save_msg="rebuilding site $(date)"
git commit -m "Saving"

git commit -m "$save_msg"

printf "\033[0;32mFetching latest state from GitHub...\033[0m\n"

git pull origin dev

git push origin dev