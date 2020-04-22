#!/bin/sh

git add -A .

save_msg="Saving site state $(date)"

git commit -m "$save_msg"

git pull --rebase --no-edit origin dev

printf "\033[0;32mPushing to GitHub...\033[0m\n"

git push origin dev

