#!/bin/bash
set -eu

export NOW=$(date +"%F-%T.%N")

# run 200 times, in batches of ten parallel processes
# on my machine, the script takes about 1 second to run
#   with a failure rate around 5%
#   so we usually find a failure in 1-3 seconds
time seq 200 |
    xargs -n1 -P10 ./try-coverage.sh
