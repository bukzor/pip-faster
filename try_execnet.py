#!/usr/bin/env python
# run 'myscript' from within execnet: http://codespeak.net/execnet/
import execnet
gw = execnet.makegateway()
channel = gw.remote_exec("import myscript")
channel.waitclose()
gw.exit()
