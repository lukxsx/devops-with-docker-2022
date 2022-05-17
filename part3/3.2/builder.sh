#!/bin/bash

# A bash script to clone git repo, build image and push it to the Docker Hub
#
# By default uploads to user/repo_name:latest, but name can be changed with
# the -n option
#
# Usage:
#   -r [repo URL]    URL of the git repo
#   -u [username]    Docker Hub username
#   -p [password]    Docker Hub password or token
#   -n [name]        (Optional) Name for the container (default is repo name)

while getopts r:u:p:n: flag
do
    case "${flag}" in
        r) repo=${OPTARG};;
        u) d_user=${OPTARG};;
        p) d_pass=${OPTARG};;
        n) app_name=${OPTARG};;
    esac
done

# If -n is not set, set app name to repo's name
if [ -z "$app_name" ]
    then
        app_name=${repo%.git}
        app_name=${app_name##*/}
fi

# Clone the repo
git clone $repo $app_name
cd $app_name

# Build the image
docker build -t "$d_user"/"$app_name" .

# Open interactive login if username variable is set, otherwise log in
if [ -z "$d_user" ]
    then
        docker login
    else
        docker login -u $d_user -p $d_pass
fi

# Push to Docker Hub
docker push "$d_user"/"$app_name":latest
