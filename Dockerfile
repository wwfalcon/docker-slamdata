FROM alpine:latest
MAINTAINER "Ahmed El-Madhoun <aelmadho@gmail.com>"

RUN apk --update add openjdk8-jre wget gzip ghostscript-fonts font-misc-misc \
	&& wget --no-check-certificate -q -O slamdata.sh \
	https://bintray.com/artifact/download/slamdata-inc/generic/slamdata_unix_2_5_5.sh \
	&& chmod +x slamdata.sh \
      	&& echo -ne 'o\n/usr/local/slamdata\ny\n/usr/local/bin\n' | ./slamdata.sh -c

VOLUME /slamdata
ENTRYPOINT ["/usr/local/bin/SlamData"]
