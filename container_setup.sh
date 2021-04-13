#!/bin/sh

read -e -p "plz insert path : " container_path
mkdir -p $container_path
cp /Users/kouki/devs/container/container.* $container_path
touch $container_path/docker-copose.yml