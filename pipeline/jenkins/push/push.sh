#!/bin/bash

echo "**************************************"
echo "*********** Pushing image ************"
echo "**************************************"

IMAGE="maven-project"

echo "************ Logging in *************"
docker login -u shubh1917 -p $PASS

echo "*********** Tagging image **********"
docker tag $IMAGE:$BUILD_TAG shubh1917/$IMAGE:$BUILD_TAG

echo "*********** Pushing image **********"
docker push shubh1917/$IMAGE:$BUILD_TAG
