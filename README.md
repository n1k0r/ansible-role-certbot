# Certbot role for Ansible

## Variables

```yaml
certbot:
  email: admin.account@mail.service
  after_renew:
    - "{{ nginx_scripts.reload }}"
  webroot: "/var/www/acme" # used for dns method
  accounts: # used for dns method
    main:
      type: cloudflare # only cloudflare supported
      email: cloudflare.account@mail.service
      api_key: 286755fad04869ca523320acce0dc6a43320a
  certs:
    example: # dict key used for folders name
      domains: ["example.com", "*.example.com"] # dns method
      account: main

    sub:
      domains: ["sub.domain.org"] # webroot method
```

Webserver have to expose folder `certbot.webroot` as `/.well-known/acme-challenge/` for all managed domains.

Account dictionary is also expected: https://gitlab.com/n1k0r-ansible/roles/master
