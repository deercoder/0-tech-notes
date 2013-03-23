#! /bin/bash
# Filename: auto-work.sh
# Description: This script is used to automatically pull files and 
# commit local changes, then push these changes to github

# Commit local changes to stash
echo '##### No begin to commit changes to local #####'
git add -A
git commit -a

# pull server data
echo '##### Now start pulling data from server #####'
git pull origin master

## There might be conflict, but just ignore it
## If there is, you can only handle it manually.

# push local changes to server
echo '##### Now push local changes to server #####'
git push origin master
