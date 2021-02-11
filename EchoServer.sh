#!/bin/bash

port=2000

# Download socat package
echo '---- Echo server running ----'
socat TCP4-LISTEN:${port},fork EXEC:cat