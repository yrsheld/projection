FROM osrf/ros:noetic-desktop-full

# Change the default shell to bash
SHELL ["/bin/bash", "-c"]

# Install Git
RUN apt-get update && apt-get install -y git

# clone Turtlebot3 repos in dev_ws
WORKDIR /dev_ws/src
RUN git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3.git
RUN git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
RUN git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git

RUN echo "export TURTLEBOT3_MODEL=waffle_pi" >> ~/.bashrc

# Build the 3 packages in ws
RUN source /opt/ros/noetic/setup.bash \
  && cd /dev_ws \
  && catkin_make
RUN echo "source /dev_ws/devel/setup.bash" >> ~/.bashrc

WORKDIR /dev_ws

