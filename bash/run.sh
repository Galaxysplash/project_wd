#!/bin/bash
set -e

pwd
cd bash

clear
./build.sh
./deploy.sh
./cleanup.sh
./push

