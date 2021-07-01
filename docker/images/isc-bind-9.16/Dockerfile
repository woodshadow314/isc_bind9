FROM store/internetsystemsconsortium/bind9:9.16
RUN apt-get -y update \
	&& apt-get -y upgrade

RUN apt-get install -y mc
#RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /etc/bind/named.conf.default-zones

#RUN ["mkdir", "-p", "/etc/bind/masters"]
#RUN ["mkdir", "/etc/bind/slaves"]
#RUN echo "ddd" >  /etc/bind/777.txt
#RUN echo "ddd" >>  /etc/bind/named.conf.local
#&& chown root:bind /etc/bind/slaves

RUN ["/bin/bash", "-c", "mkdir /etc/bind/slaves"]

EXPOSE 53

#CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]