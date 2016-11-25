# Run DokuWiki as a Dokku app

## Quick start

1. Clone/fork this project.
2. Run:

```bash
DOKKU_HOST=dokku.me dokku apps:create dokuwiki
dokku storage:mount /srv/dokuwiki:/var/dokuwiki
git push dokku master
```

Your new DokuWiki instance is now running at <http://dokuwiki.dokku.me>. Login as user `admin`, password `admin`.
