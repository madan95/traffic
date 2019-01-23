#!/usr/bin/env bash

# Holds the key for Letencrypt SSL 
chmod 600 acme.json

if [ -z "$(docker network ls | grep -F -i traffic)" ]; then
  # If traffic network bridge is does not exist, Create one
  docker network create traffic
fi

docker-compose up -d
