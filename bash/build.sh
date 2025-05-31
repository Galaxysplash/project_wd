#!/bin/bash
set -e

cd ~/ros_projects/project_wd/
colcon build --symlink-install
