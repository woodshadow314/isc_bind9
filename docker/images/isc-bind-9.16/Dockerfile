FROM store/internetsystemsconsortium/bind9:9.16
RUN apt-get -y update \
	&& apt-get -y upgrade

RUN apt-get install -y mc
RUN rm -rf /var/lib/apt/lists/*

COPY --chown=root:bind etc /etc
COPY --chown=root:bind isc-bind.sh /tmp

USER bind
RUN chmod 777 /tmp/isc-bind.sh && /tmp/isc-bind.sh

EXPOSE 53

#CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]