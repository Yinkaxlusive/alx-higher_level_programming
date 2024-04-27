#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

URL=$1

# Set POST parameters
EMAIL="test@gmail.com"
SUBJECT="I will always be here for PLD"

# Send POST request with parameters using curl
RESPONSE=$(curl -s -X POST -d "email=$EMAIL&subject=$SUBJECT" "$URL")

# Display the body of the response
echo "Response Body:"
echo "$RESPONSE"
