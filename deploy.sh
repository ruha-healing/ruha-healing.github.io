#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

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