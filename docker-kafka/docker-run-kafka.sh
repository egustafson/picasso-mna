#!/bin/sh

docker run -i \
       --name kafka \
       -p 9092:9092 \
       --link zookeeper:zk \
       --env KAFKA_ADVERTISED_HOST_NAME=10.3.7.89 \
       --volume /var/run/docker.sock:/var/run/docker.sock \
       wurstmeister/kafka:0.8.2.0
