#!/bin/bash
set -e

pwd
cd bash

./cleanup.sh
./build.sh
./deploy.sh
./cleanup.sh
