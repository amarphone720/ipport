#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <IP_ADDRESS> <PORT>"
    exit 1
fi

IP_ADDRESS=$1
PORT=$2

# Use nc to check if the port is open
if nc -z -w 5 "$IP_ADDRESS" "$PORT"; then
    echo "Port $PORT on $IP_ADDRESS is open."
else
    echo "Port $PORT on $IP_ADDRESS is closed."
fi
