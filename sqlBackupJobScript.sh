#!/bin/bash

curl -u shubham:113c24b1fa94fbbdc7336df3a4091eb4b4 -X POST "http://localhost:8080/job/sql-backup-to-aws-s3/buildWithParameters?delay=0sec" --data MYSQL_HOST=db --data DB_NAME=testdb --data BUCKET_NAME=jenkins-sql-backup-shubham
