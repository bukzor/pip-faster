#!/usr/bin/env python
import execnet
gw = execnet.makegateway()
channel = gw.remote_exec("import myscript")
channel.waitclose()
gw.exit()
