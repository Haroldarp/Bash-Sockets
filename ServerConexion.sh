#!/bin/bash

port=2000

# Download socat package
# socat TCP4-LISTEN:${port},fork EXEC:cat

exec 3<>/dev/tcp/localhost/${port}
echo "Info" >&3
cat <&3

exit 1