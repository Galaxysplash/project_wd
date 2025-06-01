#!/bin/bash
set -e

source /opt/ros/humble/setup.bash
cd ~/ros_projects/project_wd/
colcon build --symlink-install
