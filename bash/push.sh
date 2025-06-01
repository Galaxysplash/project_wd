#!/bin/bash
set -e

find . -type d -empty -exec touch {}/.gitkeep \;
git add .
git add *
git commit -a -m "..."
git push