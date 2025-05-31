#!/bin/bash
set -e

BOT_USER=marcel
BOT_HOST=bot
WORKSPACE=ros_projects/project_wd

rsync -az --delete \
  ~/ros_projects/project_wd/build \
  ~/ros_projects/project_wd/install \
  ~/ros_projects/project_wd/log \
  $BOT_USER@$BOT_HOST:~/$WORKSPACE/
