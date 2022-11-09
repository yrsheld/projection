FROM osrf/ros:melodic-desktop-full

# Change the default shell to bash
SHELL ["/bin/bash", "-c"]

# Install move_base, rviz plugins
RUN apt-get update \
  && apt-get install -y git \ 
  && apt-get install -y qtbase5-dev \
  && apt-get install -y qtdeclarative5-dev \
  && apt-get install -y ros-melodic-move-base \
  && apt-get install -y ros-melodic-moveit-ros-visualization \
  && apt-get install -y ros-melodic-jsk-rviz-plugins \
  && apt-get install -y ros-melodic-rviz-visual-tools

WORKDIR /dev_ws/src

# Get pkg: rviz_camera_stream
RUN git clone https://github.com/uml-robotics/rviz_camera_stream

# Get pkg: arrow_projection
WORKDIR /dev_ws/src/arrow_projection
COPY . .

# Build packages
WORKDIR /dev_ws/src
RUN source /opt/ros/melodic/setup.bash \
  && cd /dev_ws \
  && catkin_make
  
#RUN echo "source /dev_ws/devel/setup.bash" >> ~/.bashrc

RUN sed --in-place --expression \
      '$isource "/dev_ws/devel/setup.bash"' \
      /ros_entrypoint.sh

