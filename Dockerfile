FROM istepanov/dokuwiki:2.0

CMD /app/dokku-start.sh

# Add Bash
# Enable SSL - see https://github.com/istepanov/docker-dokuwiki/pull/16
RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main/ add \
	bash \
	libressl2.4-libssl libressl2.4-libcrypto
RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ add \
	php7-openssl php7-zlib

COPY . /app/
