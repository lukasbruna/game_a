#!/bin/bash

for container in `docker ps -q`;do
	if [[ `docker inspect --format='{{.Name}}' $container` == *"ubuntu"* ]]; then
		docker exec $container ./mnt/data/script.sh
	fi
done
