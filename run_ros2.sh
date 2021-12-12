XAUTH=/home/nskinner/.Xauthority

docker run -it \
    --net=host \
    --privileged \
    -p $1:8800 \
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    --runtime=nvidia \
    -v /run/udev:/run/udev:ro \
    -v /dev:/dev \
    -v /home/nskinner/.gazebo:/root/.gazebo \
    -v /home/nskinner/Documents/ardak/:/root/dd_ws/ardak \
    -v /home/nskinner/Documents/ros-inc/:/opt/ros/foxy/cp \
    dockros  \
    bash
