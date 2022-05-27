#!/bin/bash
#
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
#

clear
echo
tput setaf 3
echo "----------------------------------------------------------:START"
tput sgr0
echo

# Check files online are not more up to date.
echo "Checking for newer files online first.."
git pull

# Add everything/backup the project folder
git add --all .

# Give a comment to the commit if you want
echo "================================================================"
echo "   Write your commit comment below this line - be descriptive"
echo "================================================================"
read _input

# Committing to local repository with message containing time and commit text.
git commit -m "$_input"

# Push the local files to github
git push -u origin main

echo
echo "** Github Push completed. **"

echo
tput setaf 3
echo "----------------------------------------------------------:END"
tput sgr0
echo
