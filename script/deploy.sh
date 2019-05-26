#!/usr/bin/env bash
set -e

bash -c "echo \"${DOCKER_PASSWORD}\" | docker login --username \"${DOCKER_LOGIN}\" --password-stdin ;"
bash -c "docker tag zutherb/monolithic-shop:latest \"${DOCKER_LOGIN}\"/monolithic:latest"
bash -c "docker push \"${DOCKER_LOGIN}\"/monolithic:latest"