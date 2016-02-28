
demonstrate an issue i'm having with coverage and pytest-xdist/execnet
----------------------------------------------------------------------

To run the demo:

    make



implementation notes:
---------------------

To get execnet to dump its information:

    EXECNET_DEBUG=2

To get coverage to dump its information:

    COVERAGE_DEBUG=config,sys,trace,pid,dataio,dataop,callers,plugin
    #COVERAGE_DEBUG_FILE=cov.debug

To report a particular coverage file

    COVERAGE_FILE=thatfile coverage report
