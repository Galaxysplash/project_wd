#!/bin/bash
set -e

BOT_USER=marcel
BOT_HOST=bot
RUNTIME_PATH=project_wd

ssh $BOT_USER@$BOT_HOST "mkdir -p ~/$RUNTIME_PATH"

rsync -az --delete -L \
  ~/ros_projects/project_wd/build \
  ~/ros_projects/project_wd/install \
  ~/ros_projects/project_wd/log \
  $BOT_USER@$BOT_HOST:~/$RUNTIME_PATH/

echo "Starting remote node on bot..."
ssh $BOT_USER@$BOT_HOST "source ~/$RUNTIME_PATH/install/setup.bash && ros2 run genises_node genises_node"
