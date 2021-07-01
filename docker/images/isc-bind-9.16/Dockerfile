FROM store/internetsystemsconsortium/bind9:9.16
RUN apt-get -qqqy update \
	&& apt-get -qqqy upgrade \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 53

#CMD ping 127.0.0.1

CMD ["/usr/sbin/named", "-c", "/etc/named.conf", "-g", "-u", "named"]s