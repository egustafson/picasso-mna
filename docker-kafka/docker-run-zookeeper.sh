#!/bin/sh

exec docker run -d \
     --name zookeeper \
     -p 2181:2181 \
     wurstmeister/zookeeper
