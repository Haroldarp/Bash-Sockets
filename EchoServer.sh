#!/bin/bash

port=2000

# Download socat package
socat TCP4-LISTEN:${port},fork EXEC:cat