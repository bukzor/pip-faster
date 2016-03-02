#!/usr/bin/env python
import execnet
gw = execnet.makegateway()
channel = gw.remote_exec("import one_test; one_test.test_1()")
channel.waitclose()
gw.exit()
