#!/bin/bash

# Your /23 network: 10.0.2.0 - 10.0.3.255
for third_octet in 2 3; do
    for fourth_octet in $(seq 0 255); do
        ip="10.0.$third_octet.$fourth_octet"

        # Skip network address, broadcast, and gateway
        if [ "$ip" == "10.0.2.0" ] || [ "$ip" == "10.0.3.255" ] || [ "$ip" == "10.0.2.1" ]; then
            continue
        fi

        # Ping once, 1 second timeout
        if ! ping -c 1 -W 1 $ip > /dev/null 2>&1; then
            echo "$ip"
        fi
    done
done
