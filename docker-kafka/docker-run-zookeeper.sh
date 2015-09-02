#!/bin/sh

exec docker run -i \
     --name zookeeper \
     -p 2181:2181 \
     wurstmeister/zookeeper
