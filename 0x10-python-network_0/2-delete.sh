#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

URL=$1

# Send DELETE request using curl
RESPONSE=$(curl -s -X DELETE "$URL")

# Display the body of the response
echo "Response Body:"
echo "$RESPONSE"
