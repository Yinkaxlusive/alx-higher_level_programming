#!/bin/bash
# script that takes in a URL, sends a POST request to the passed URL, and displays the body of the response
# Set POST parameters
EMAIL="test@gmail.com"
SUBJECT="I will always be here for PLD"
curl -s "$1" -X POST -d "email=$EMAIL&subject=$SUBJECT" "$URL"
