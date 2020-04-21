#!/bin/sh

# If a command fails then the deploy stops
set -e

if output=$(git status --porcelain) && [ -z "$output" ]; then
  # Working directory clean
  # Delete all the old site fragments
  rm -rf ./public

  # Build the project.
  hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

  # Add untracked public folder
  git add ./public -f

  # Commit changes.
  msg="rebuilding site $(date)"
  if [ -n "$*" ]; then
    msg="$*"
  fi
  git commit -m "$msg"

  # Remove the latest deploy fragment
  git branch -D master

  # Create a new master branch with the commit state of /public
  git subtree split --prefix=public -b master

  # Force push
  git push -f origin master
else 
  # Uncommitted changes
  printf "\033[0;32mNeed to run ./save.sh first\033[0m\n"
fi



