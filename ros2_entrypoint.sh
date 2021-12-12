#!/bin/bash
set -e

# setup ros2 environment
source "/opt/ros/foxy/setup.bash"
source "/root/dd_ws/install/setup.bash"

if [ -f "/root/dd_ws/ardak/install/setup.bash" ]; then
    source "/root/dd_ws/ardak/install/setup.bash"
fi

exec "$@"
