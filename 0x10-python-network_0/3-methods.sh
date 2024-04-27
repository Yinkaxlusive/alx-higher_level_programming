#!/bin/bash
# This script takes a URL as an argument and displays all HTTP methods the server will accept.
# It uses curl with the -s (silent) option to fetch the allowed methods from the server.
curl -sI "$1" | grep "Allow:" | sed 's/Allow: //' | tr ',' '\n'
