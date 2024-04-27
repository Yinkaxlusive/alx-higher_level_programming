#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

URL=$1

# Send OPTIONS request using curl to get allowed methods
METHODS=$(curl -s -i -X OPTIONS "$URL" | grep 'Allow:' | sed 's/Allow: //')

# Display the allowed methods
echo "Allowed HTTP Methods for $URL:"
echo "$METHODS"
