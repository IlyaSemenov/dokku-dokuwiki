FROM istepanov/dokuwiki:2.0

CMD /app/dokku-start.sh

RUN apk add --no-cache bash

COPY . /app/
