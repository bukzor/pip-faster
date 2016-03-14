#!/bin/bash
# This script sometimes fails when run concurrently with itself.  (see demo.sh)
set -eu

# arguments/environment, with defaults
SEQ="${1:-0}"
export TOP=$(dirname $(readlink -f $0))
export LOGS=$PWD/logs-${NOW:-$(date +"%F-%T.%N")}

# make a clean directory for our demo
DEMO=$LOGS/$SEQ
rm -rf $DEMO
mkdir -p $DEMO
cd $DEMO
echo $DEMO

# run coverage, with all the debugging options I could find enabled.
PYTHONPATH=$TOP \
    EXECNET_DEBUG=2 \
    COVERAGE_FILE=$DEMO/cov \
    COVERAGE_DEBUG=config,sys,trace,pid,dataio,dataop,callers,plugin \
    COVERAGE_PROCESS_START=$TOP/.coveragerc \
    $TOP/try_execnet.py \
    > test.log 2>&1

# assert that at least one of the coverage files has coverage for myscript
for cov in cov.*; do
    export COVERAGE_FILE=$cov
    if coverage report --fail-under 100 $TOP/myscript.py > ${COVERAGE_FILE}.report; then
        exit 0
    fi
done

# there is no coverage for myscript!
echo "

===============================================================================
FAILED: $DEMO
===============================================================================

" | tee failure

# we must exit with 255 to make xargs stop.
exit 255
