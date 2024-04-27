#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Get URL from command line argument
URL=$1

# Send a request to the URL using curl and store the response body in a variable
response=$(curl -sS "$URL")

# Calculate the size of the response body in bytes
size=$(echo -n "$response" | wc -c)

# Display the size of the response body
echo "Size of the response body: $size bytes"

