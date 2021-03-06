#!/bin/bash

# Checking if git is installed
[[ `which git` -ne 0 ]] then
    echo "Git not available on your system or in your PATH"
else

    git clone https://github.com/tioumen/splunk-docker.git /tmp
fi

# starting
echo "Your are going to install Splunk docker ..." && sleep 3
docker-compose -f /tmp/splunk-docker/Dockerfile
