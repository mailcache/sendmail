sendmail
==========

A sendmail replacement which forwards mail to an SMTP server.

```bash
> go get github.com/mailcache/sendmail

> mc-sendmail test@mailcache.local <<EOF
From: App <app@mailcache.local>
To: Test <test@mailcache.local>
Subject: Test message

Some content!
EOF
```

You can also set the from address (for SMTP `MAIL FROM`):

```bash
./mc-sendmail --from="admin@mailcache.local" test@mailcache.local ...
```

Or pass in multiple recipients:

```bash
./mc-sendmail --from="admin@mailcache.local" test@mailcache.local test2@mailcache.local ...
```

Or override the destination SMTP server:

```bash
./mc-sendmail --smtp-addr="localhost:1026" test@mailcache.local ...
```

To use from php.ini

```
sendmail_path = /usr/local/bin/mc-sendmail
```

### Licence

Copyright © 2026, Suresh Shinde

Released under MIT license, see [LICENSE](LICENSE.md) for details.
