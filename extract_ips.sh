#!/bin/bash

echo "Fetching unique IP addresses from Nginx logs..."

docker logs aws-devops-assignment-nginx-1 2>/dev/null | awk '{print $1}' | sort | uniq
