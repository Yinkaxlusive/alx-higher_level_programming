#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

URL=$1

# Send GET request using curl
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

# Check if response status code is 200
if [ "$RESPONSE" -eq 200 ]; then
    BODY=$(curl -s "$URL")
    echo "Response Body:"
    echo "$BODY"
else
    echo "Error: Non-200 status code received: $RESPONSE"
fi
