#!/bin/bash
# cp orion/.env.template orion/.env
# docker-compose up orion
# cp sirius/.env.template sirius/.env
# docker-compose up sirius
cp -R orion/build nginx/dashboard
cp -R sirius/build nginx/user-interface
docker build --no-cache -t qlf_nginx:latest -f nginx/Dockerfile.Prod nginx
rm -rf nginx/dashboard
rm -rf nginx/user-interface