#!/usr/bin/env bash
#################
# This script will create a docker image of the basic Flask App
# by rrmerugu@gmail.com on 07 December 2017
#################


docker build  -t mydocker-image --build-arg build_env="production" -f Dockerfile . --no-cache"
docker run  --name mydocker -p 5010:5010 -d  mydocker-image"


