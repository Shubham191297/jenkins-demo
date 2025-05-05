#!/bin/bash

Name=$1
Lastname=$2
Show=$3

if [ "$Show" = "true" ]; then
	echo "Hello, $Name $Lastname"
else
	echo "If you want to see the information please mark show option"
fi
