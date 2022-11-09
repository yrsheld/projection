FROM osrf/ros:melodic-desktop-full

# Change the default shell to bash
SHELL ["/bin/bash", "-c"]

# Install Git
RUN apt-get install -y ros-melodic-image-view


WORKDIR /dev_ws/src
#RUN git clone https://github.com/uml-robotics/rviz_camera_stream
#RUN git clone https://github.com/umhan35/arrow_projection

# Build packages
RUN source /opt/ros/melodic/setup.bash \
  && cd /dev_ws \
  && catkin_make
  
RUN echo "source /dev_ws/devel/setup.bash" >> ~/.bashrc
WORKDIR /dev_ws
#RUN sed --in-place --expression \
#      '$isource "/dev_ws/devel/setup.bash"' \
#      /ros_entrypoint.sh
