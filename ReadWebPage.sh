#!/bin/bash

server="www.google.com"
protocolo=tcp
port=80

# Get page html
exec 3<>/dev/${protocolo}/${server}/${port}
echo -e "GET / HTTP/1.1\r\nhost: ${server}\r\nConnection: close\r\n\r\n" >&3

# Print page html
cat <&3

#Close file descriptors
exec 3<&-
exec 3>&-



# Get page html other way
echo ""
echo ""
echo ""
echo --------------- Get page html with wget ---------------
echo ""
echo ""
echo ""
wget -O - https://www.facebook.com/