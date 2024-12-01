#!/bin/bash

set -xe

COMMITID=$(cat commitid)
./kernel_tools/build-kernel.sh -s amity -t v8 -c $COMMITID -o config-overlay
./kernel_tools/build-kernel.sh -s amity -t 2712 -c $COMMITID -o config-overlay
