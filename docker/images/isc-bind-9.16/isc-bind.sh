#!/bin/bash

echo "" > /tmp/isc-bind.log
echo "Start of configuration" >> /tmp/isc-bind.log

# if [ ! -d /etc/bind/masters ]; then
#     mkdir -p /etc/bind/masters >> /tmp/isc-bind.log
# fi

if [ ! -d /etc/bind/slaves ]; then
     mkdir -p /etc/bind/slaves >> /tmp/isc-bind.log
 fi

chmod -R u=rwx,g=rx /etc/bind/{masters,slaves} >> /tmp/isc-bind.log
chown -R root:bind /etc/bind/{masters,slaves} >> /tmp/isc-bind.log

chmod u=rwx,g=rx /etc/bind/{zones.conf,zones-external.conf,views.conf,named.conf.options} >> /tmp/isc-bind.log
chown root:bind /etc/bind/{zones.conf,zones-external.conf,views.conf,named.conf.options} >> /tmp/isc-bind.log

echo 'include "/etc/bind/views.conf";' >> /etc/bind/named.conf.local

echo "End of configuration" > /tmp/isc-bind.log