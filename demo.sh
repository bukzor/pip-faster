#!/bin/bash
set -eux

trap 'find -name failure' ERR

export TOP="$PWD"
export LOGS=$PWD/logs-$(date +"%F-%T.%N")
time seq 200 |
    xargs -n1 -P10 ./one-thread.sh
