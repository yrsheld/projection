# Usage Example:
# ./run_docker.sh turtlebot3_base "roslaunch turtlebot3_gazebo turtlebot3_world.launch.py"

# Define Docker volumes and environment variables
DOCKER_VOLUMES="
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
"
DOCKER_ENV_VARS="
--env="DISPLAY"
"

# --env=QT_X11_NO_MITSHM=1

DOCKER_ARGS=${DOCKER_VOLUMES}" "${DOCKER_ENV_VARS}

# Run the command
docker run -it --privileged --net=host $DOCKER_ARGS $1 bash
 
