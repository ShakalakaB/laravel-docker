#!/bin/bash

# install dependencies
#docker run --rm -v "$(pwd)":/app composer install
docker run --rm -v "$PWD":/app composer install

chown -R aldora:aldora vendor

cp .env.example .env


