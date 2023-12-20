#!/bin/bash

while true; do
    # Check if the container is running
    if [ "$(docker inspect -f '{{.State.Running}}' test)" = "false" ]; then
        sleep 900  # Wait for 15 minutes
        docker start console
    fi
    sleep 60  # Check every 60 seconds
done