#!/bin/bash
docker build -t docker-basicweb .
echo "Running docker-basic web on port 80 and 443.. Ctrl-c to exit"
docker run -it --rm -p 80:80 -p 443:443 -v $PWD/tmp:/usr/share/nginx/html/tmp/ docker-basicweb
