#!/bin/bash

# stop the running containers
# docker-compose -p my-ftp -f ./ftp.yml down

# pull the latest changes from the remote repository
git get

# build the new image
docker build --no-cache -t my-nginx -f ./Dockerfile .

# start the containers
docker-compose -p my-nginx -f ./nginx.yml up -d

# list the running containers
docker ps -a