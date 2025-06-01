#!/bin/bash
set -e

pwd
cd bash

clear
./cleanup.sh
./build.sh
./deploy.sh
./cleanup.sh
