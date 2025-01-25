#!/bin/bash
#
# set-default-audio.sh - sets the correct screen i prefer as the default sink
#

# Desired node.nick value
DESIRED_NICK="ASUS VG24V"

# Max retries and delay
MAX_RETRIES=10
DELAY=1

# Function to check if PipeWire is ready
is_pipewire_ready() {
    wpctl status &>/dev/null
    return $?
}

# Wait for PipeWire to be ready
for ((i=1; i<=MAX_RETRIES; i++)); do
    if is_pipewire_ready; then
        echo "PipeWire is ready."
        break
    fi
    echo "Waiting for PipeWire... ($i/$MAX_RETRIES)"
    sleep "$DELAY"
done

if ! is_pipewire_ready; then
    echo "PipeWire not ready. Exiting."
    exit 1
fi

# Get the dynamic sink IDs based on "GA104"
SINK_IDS=$(wpctl status | grep -oP '\s*(\d+)\.\s*GA104' | awk '{print $1}')

# Find and set the correct sink
for ID in $SINK_IDS; do
    if wpctl inspect "$ID" | grep -q "node.nick = \"$DESIRED_NICK\""; then
        wpctl set-default "$ID"
        echo "Default sink set to: $DESIRED_NICK (Node ID: $ID)"
        exit 0
    fi
done

echo "No sink with node.nick = \"$DESIRED_NICK\" found."
exit 1
