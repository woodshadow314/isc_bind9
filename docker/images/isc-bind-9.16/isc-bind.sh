#!/bin/bash

echo "start of configuration" > /tmp/isc-bind.log

# if [ ! -d /etc/bind/masters ]; then
#     mkdir -p /etc/bind/masters >> /tmp/isc-bind.log
# fi

# if [ ! -d /etc/bind/slaves ]; then
#     mkdir -p /etc/bind/slaves >> /tmp/isc-bind.log
# fi

# chmod u=rwx,g=rx /etc/bind/{masters,slaves} >> /tmp/isc-bind.log
# chown root:bind /etc/bind/{masters,slaves} >> /tmp/isc-bind.log

echo "end of configuration" > /tmp/isc-bind.log