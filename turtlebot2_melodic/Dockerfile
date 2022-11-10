FROM osrf/ros:melodic-desktop-full

# Change the default shell to bash
SHELL ["/bin/bash", "-c"]

RUN apt-get update \
  && apt-get install -y curl \
  && apt-get install -y ros-melodic-joy*

# Clone into /dev_ws/src
WORKDIR /dev_ws/src
RUN source /opt/ros/melodic/setup.bash \
  && cd /dev_ws \
  && catkin_make
  
RUN curl -sLf https://raw.githubusercontent.com/gaunthan/Turtlebot2-On-Melodic/master/install_all.sh | bash
 
# Source workspace
#RUN echo "source ~/dev_ws/devel/setup.bash" >> ~/.bashrc
#RUN source ~/.bashrc

RUN apt-get install -y ros-melodic-move-base* \
  && apt-get install -y ros-melodic-map-server* \
  && apt-get install -y ros-melodic-amcl* \
  && apt-get install -y ros-melodic-navigation*

RUN source /opt/ros/melodic/setup.bash \
  && cd /dev_ws \
  && catkin_make

RUN sed --in-place --expression \
      '$isource "/dev_ws/devel/setup.bash"' \
      /ros_entrypoint.sh

#CMD ["roslaunch", "turtlebot_stage", "turtlebot_in_stage.launch"]



