#!/bin/bash

echo "   _       _       ___         _     "
echo "  /_\ _  _| |_ ___| _ \_  _ __| |_   "
echo " / _ \ || |  _/ _ \  _/ || (_-< ' \  "
echo "/_/ \_\_,_|\__\___/_|  \_,_/__/_||_| "
echo ""
echo "A small tool to autopush your git repository"
echo "By: MrMidnight"
echo ""
sleep 0.5

# Check if git repo exsists
if git status > /dev/null 2>&1 ; then

        # push to github
        echo "Git repo exsists! Continuing..."
        git add .

        # Check for commit
        if git commit 2> /dev/null ; then
                cat ./token.txt | xclip -selection clipboard
                git push
        else 
                # Nothing to commit
                echo "Exiting..."
                exit
        fi

else
        # exit if no github repo found
        echo "No Git repo found in the local working directory! Exiting..."
        exit
fi