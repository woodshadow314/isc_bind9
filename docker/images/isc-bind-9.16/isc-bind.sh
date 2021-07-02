#!/bin/bash

exec &>>/tmp/isc-bind.log
 
echo "Start of configuration" >> /tmp/isc-bind.log

# if [ ! -d /etc/bind/masters ]; then
#     mkdir -p /etc/bind/masters >> /tmp/isc-bind.log
# fi

if [ ! -d /etc/bind/slaves ]; then
     mkdir -p /etc/bind/slaves
 fi

chmod -R u=rwx,g=rx /etc/bind/{masters,slaves}
chown -R root:bind /etc/bind/{masters,slaves} >> /tmp/isc-bind.log

chmod u=rw,g=r /etc/bind/{zones.conf,zones-external.conf,views.conf,named.conf.options}
chown root:bind /etc/bind/{zones.conf,zones-external.conf,views.conf,named.conf.options}

echo 'include "/etc/bind/views.conf";' >> /etc/bind/named.conf.local

echo "End of configuration" >> /tmp/isc-bind.log