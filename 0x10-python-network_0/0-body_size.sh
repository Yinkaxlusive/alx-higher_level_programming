#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Get URL from command line argument
URL=$1

# Send a request to the URL using curl and store the response body in a variable
response=$(curl -s -o /dev/null  -w "%{size_download}\n" $1)

# Check if curl encountered an error
if [ $? -ne 0 ]; then
  echo "Error: Failed to retrieve response from $URL"
  exit 1
fi

# Calculate the size of the response body in bytes
size=$(echo -n "$response" | wc -c)

# Display the size of the response body
echo $size



#!/bin/bash
# a Bash script that takes in a URL, sends a request to that URL, and displays the size of the body of the response
# curl -s -o /dev/null  -w "%{size_download}\n" $1

