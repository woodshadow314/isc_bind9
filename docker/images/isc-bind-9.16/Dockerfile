FROM store/internetsystemsconsortium/bind9:9.16
RUN apt-get -y update \
	&& apt-get -y upgrade

RUN apt-get install -y mc
RUN rm -rf /var/lib/apt/lists/*

COPY --chown=root:bind etc /etc
COPY isc-bind.sh /tmp

RUN chmod +x /tmp/isc-bind.sh

RUN  /bin/bash -c '/tmp/isc-bind.sh'
RUN chown root:root /etc/bind/named.conf.local
RUN echo 'include "/etc/bind/views.conf";' >> /etc/bind/named.conf.local

EXPOSE 53

#CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]