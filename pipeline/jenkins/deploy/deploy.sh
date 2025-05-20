#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod-user@ec2-3-94-88-157.compute-1.amazonaws.com:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh prod-user@ec2-3-94-88-157.compute-1.amazonaws.com:/tmp/publish.sh
ssh -i /opt/prod prod-user@ec2-3-94-88-157.compute-1.amazonaws.com "/tmp/publish.sh"
