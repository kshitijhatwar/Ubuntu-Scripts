#!/bin/bash

# Define network details
network="10.0.2"
start=0     # starting last octet for /23
end=255     # ending last octet for /23

# Because /23 means two subnets worth of addresses:
# 10.0.2.0–10.0.3.255
for third_octet in 2 3; do
    for fourth_octet in $(seq $start $end); do
        ip="$network.$third_octet.$fourth_octet"
        
        # Skip gateway
        if [ "$ip" == "10.0.2.1" ]; then
            continue
        fi

        # Ping once with 1 second timeout
        ping -c 1 -W 1 $ip > /dev/null 2>&1
        if [ $? -ne 0 ]; then
            echo "$ip"  # free IP
        fi
    done
done
