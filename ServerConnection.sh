#!/bin/bash

port=2000

exec 3<>/dev/tcp/localhost/${port}

while true; do

    echo "Enter message ('q' for quit):"
    read message

  if [ "$message" == "q" ]; then
    echo $message >&3
    break
  else
    echo $message >&3
    echo 'Response:'
    cat <&3
    echo ''
  fi

done

echo "Exiting."
exit 1