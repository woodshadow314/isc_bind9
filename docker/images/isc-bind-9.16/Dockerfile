FROM store/internetsystemsconsortium/bind9:9.16
RUN apt-get -qqqy update \
	&& apt-get -qqqy upgrade \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir /etc/bind/masters
RUN mkdir /etc/bind/slaves && chown root:bind /etc/bind/slaves

EXPOSE 53

#CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]