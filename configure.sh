#!/bin/bash
git submodule init
git submodule update
cp sirius/.env.template sirius/.env
cp orion/.env.template orion/.env
cp centaurus/global-env.template centaurus/global-env
cp deployment/nginx-proxy.conf.template deployment/nginx-proxy.conf
cp docker-compose.yml.template docker-compose.yml
echo 'Building'
docker-compose build
echo 'Starting'
docker-compose up