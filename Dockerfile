FROM istepanov/dokuwiki:2.0

CMD /app/dokku-start.sh

# Add Bash
# Enable SSL - see https://github.com/istepanov/docker-dokuwiki/pull/16
# Enable JSON, curl for Google Authenticator
RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main/ add \
	bash \
	libressl2.4-libssl libressl2.4-libcrypto
RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ add \
	php7-curl php7-json php7-openssl php7-zlib

# Google Authenticator plugin
RUN curl -L https://github.com/kettari/authgoogle/archive/master.tar.gz | tar xzv -C /var/www/lib/plugins && \
	mv /var/www/lib/plugins/authgoogle-master /var/www/lib/plugins/authgoogle

COPY . /app/
