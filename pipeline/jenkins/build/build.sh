#!/bin/bash

# Copy jar file to the build location
cp -f java-app/target/*.jar jenkins/build/

echo "***************************************"
echo "****** Building Docker Image **********"
echo "***************************************"

cd jenkins/build/ && docker compose -f docker-compose-build.yaml build --no-cache