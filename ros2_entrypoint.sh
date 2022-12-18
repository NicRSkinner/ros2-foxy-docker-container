#!/bin/bash
set -e

export GAZEBO_PLUGIN_PATH=${installPrefix}/lib/x86_64-linux-gnu/gazebo-11/plugins:${GAZEBO_PLUGIN_PATH}
export GAZEBO_MODEL_PATH=${installPrefix}/share/gazebo-11/models:${GAZEBO_MODEL_PATH}:/root/dd_ws/ardak/src/ardak/description/

# setup ros2 environment
source "/opt/ros/foxy/setup.bash"
source "/root/dd_ws/install/setup.bash"

if [ -f "/root/dd_ws/ardak/install/setup.bash" ]; then
    source "/root/dd_ws/ardak/install/setup.bash"
fi

exec "$@"
