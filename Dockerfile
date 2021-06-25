FROM store/internetsystemsconsortium/bind9:9.16
RUN apt-get -qqqy update \
	&& apt-get -qqqy upgrade \
	&& rm -rf /var/lib/apt/lists/*
