#!/bin/bash
set -e

cd scripts

./cleanup.sh
./build.sh
./deploy.sh
