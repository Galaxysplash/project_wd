#!/bin/bash
set -e

RUNTIME_PATH=project_wd

./cleanup.sh
./build.sh
source ~/$RUNTIME_PATH/install/setup.bash && ros2 run genises_node genises_node
./cleanup.sh