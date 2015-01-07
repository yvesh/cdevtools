#!/bin/bash
echo "Just run that script one time - setting up docker :-)"
docker run -t -d -v /projects/www/:/projects/www --name lamp -p 80:80 compojoom/lamp
