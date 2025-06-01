#!/bin/bash
set -e

pwd
cd bash

clear
./cleanup.sh
./build.sh
./push.sh
clear
./deploy.sh

