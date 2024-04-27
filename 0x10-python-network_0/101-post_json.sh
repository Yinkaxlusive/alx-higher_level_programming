#!/bin/bash

# Check if URL and JSON file arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <URL> <JSON_FILE>"
    exit 1
fi

URL=$1
JSON_FILE=$2

# Check if JSON file exists
if [ ! -f "$JSON_FILE" ]; then
    echo "Error: JSON file '$JSON_FILE' not found."
    exit 1
fi

# Check if JSON file contains valid JSON data
if ! jq . "$JSON_FILE" >/dev/null 2>&1; then
    echo "Error: '$JSON_FILE' is not valid JSON."
    exit 1
fi

# Send JSON POST request using curl and display the body of the response
curl -s -X POST -H "Content-Type: application/json" -d "@$JSON_FILE" "$URL"
