#!/bin/sh

exec docker run \
     --volume=/:/rootfs:ro \
     --volume=/var/run:/var/run:rw \
     --volume=/sys:/sys:ro \
     --volume=/var/lib/docker/:/var/lib/docker:ro \
     --publish=8000:8080 \
     --detach=true \
     --name=cadvisor \
     google/cadvisor:latest

## note:  container(8080) -> host(8000)
