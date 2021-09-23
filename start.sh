#!/bin/bash

# Remove running containers
# docker rm -f $(docker ps -qa)
# # Build network
# docker network create garage-network
# # Build images
# docker build -t garage-frontend:latest frontend/
# docker build -t garage-backend:latest backend/
# # Run containers
# docker run -d --network garage-network --name garage-frontend garage-frontend:latest
# docker run -d --network garage-network --name garage-backend garage-backend:latest
# # Run nginx container
# docker run -d --network garage-network --name nginx-gateway --mount type=bind,source=$(pwd)/gateway/nginx.conf,target=/etc/nginx/nginx.conf -p 80:80 nginx:alpine

