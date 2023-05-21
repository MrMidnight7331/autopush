#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [[ $1 ]]; then
    echo "$1" > /usr/bin/token.txt
    echo "" >> /usr/bin/token.txt
    chmod +x ./autopush.sh
    cp ./autopush.sh /usr/bin/autopush
    echo "run: 'autopush' to start!"

else
    echo "Non token specified! Exiting..."
    echo "Learn more  personal access tokens: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token"
    exit
fi
