#!/bin/bash

curl -u jenkins:116e12442fe41949b26cc5f0010b57439f -X POST "http://localhost:8081/job/ENV/build?delay=0sec"
