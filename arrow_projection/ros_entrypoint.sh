#!/bin/bash
set -e

source /opt/ros/melodic/setup.bash
source /dev_ws/devel/setup.bash

exec "$@"
