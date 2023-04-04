#!/usr/bin/env bash
#set -x

read -p "Enter the ENV:" env

echo "The ENV is: "$env

#New User need to change the path
cd /Users/SRaja/copy-infrastructure-live/$env/us-east-1/$env/services/frontend-site

pwd

ls

read -p "Enter the file(ipv4/ipv6):" file

echo "The file is:" $file

#New User need to change the path

readFile='/Users/SRaja/copy-infrastructure-live/$file.yml'
#targetFile is where we will write to
targetFile="/Users/SRaja/copy-infrastructure-live/$env/us-east-1/$env/services/frontend-site/$file.yaml"

envsubst < "$readFile" >> "$targetFile"

#cat "$targetFile"
