#!/bin/bash

# Infinite loop to restart the process every 10 minutes
while true
do
    # Start the process
    ./gpool --pubkey 8uyoPrSogznjqeDEtL9FqtKYyaoMqZrTcRiSY8xj6HJe &

    # Get the PID of the process
    PID=$!

    # Wait for 10 minutes (600 seconds)
    sleep 600

    # Kill the process after 10 minutes
    kill $PID

    # Optional: wait a few seconds before restarting (e.g., 5 seconds)
    sleep 5
done
