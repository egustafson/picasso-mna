#!/bin/sh

#     --detach=true \

exec docker run \
     --rm=true \
     --detach=false \
     --interactive=true \
     --volume=/opt/jenkins_home:/var/jenkins_home:rw \
     --publish=8080:8080 \
     --name=jenkins \
     picasso-mna/jenkins

# Note:  There MUST be a /opt/jenkins_home on the base host.
#
