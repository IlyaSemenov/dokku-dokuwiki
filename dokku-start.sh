#!/bin/bash
set -e

# Use /var/dokuwiki instead of /var/dokuwiki-storage when available
if [ -e /var/dokuwiki ]; then
	if [ ! "$(ls -A /var/dokuwiki)" ]; then
		# On first run, copy data prefilled by the base Dockerfile
		mv /var/dokuwiki-storage/* /var/dokuwiki
	else
		rm -rf /var/dokuwiki-storage/*
	fi
	chown -R nobody /var/dokuwiki
	ln -s /var/dokuwiki/* /var/dokuwiki-storage/
fi

exec ./start.sh "$@"
