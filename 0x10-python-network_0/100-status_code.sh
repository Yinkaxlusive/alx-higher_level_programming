#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

URL=$1

# Send request using curl and display status code only
curl -s -o /dev/null -w "%{http_code}" "$URL"
