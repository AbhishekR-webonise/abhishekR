#!/bin/bash

NOW=$(date +)
#hostname of system
echo "--------"
echo "hostname"
echo "--------"

host=$(hostname)
echo "$host"

printf "\n"

echo $NOW
#OS version
echo "----------"
echo "OS Version"
echo "----------"
(uname -m ; lsb_release -d)
#Full Path to Home
printf "\n"
echo "------------"
echo "Path to Home"
echo "------------"
homedir=$HOME
echo $homedir
#Logged In Users
printf "\n"
echo "---------------"
echo "Logged In Users"
echo "---------------"

users
printf "\n"
#Groups I am part of
echo "------"
echo "Groups"
echo "------"
groups
printf "\n"
#List of all files in current directory
echo "-------------"
echo "List of Files"
echo "-------------"
ls -p -R $HOME |grep -v /
printf "\n"
text="${text}File Creation: $(date)\n"
echo -e "$text" > "assignment-$(date).log"
printf "\n"
