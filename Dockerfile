FROM istepanov/dokuwiki:2.0

CMD /dokku-start.sh

RUN apk add --no-cache bash

COPY CHECKS /app/
COPY dokku-start.sh /
