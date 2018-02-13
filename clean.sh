#!/bin/bash
docker stop starbound
docker rm $(docker ps -qa)
docker rmi $(docker images -f "dangling=true" -q)
docker rmi starbound
# docker volume rm starbound
# docker volume prune

