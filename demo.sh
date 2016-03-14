#!/bin/bash
set -eu

export TOP="$PWD"
export LOGS=$PWD/logs-$(date +"%F-%T.%N")
trap 'find $LOGS -name failure' ERR

# run 200 times, in batches of ten parallel processes
# on my machine, the script takes about 1 second to run
#   with a failure rate around 5%
#   so we usually find a failure in 1-3 seconds
time seq 200 |
    xargs -n1 -P10 ./try-coverage.sh
