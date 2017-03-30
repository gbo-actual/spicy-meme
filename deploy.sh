#!/bin/bash

# stop any running containers with this name
docker stop spicy-meme
docker rm spicy-meme

# remove any images created previously
docker rmi spicy-meme

# build the docker image
docker build -t spicy-meme .

# spin up a container with ports exposed for http
docker run --name spicy-meme -d -it -p 80:80 spicy-meme
