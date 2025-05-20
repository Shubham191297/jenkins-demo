#!/bin/bash

echo "************************************"
echo "******* Building jar ***************"
echo "************************************"

WORKSPACE="/home/shubham/jenkins-demo/jenkins_home/workspace/pipeline-docker-maven"

docker run --rm -i -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven "$@"
