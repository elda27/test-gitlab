# See: https://docs.gitlab.com/omnibus/settings/nginx.html#using-a-non-bundled-web-server
external_url "http://localhost/git"

# NGINX config
nginx['enable'] = false
web_server['external_users'] = ['nginx']
web_server['username'] = 'nginx'
# web_server['group'] = 101

# rails config
gitlab_rails['trusted_proxies'] = ['172.17.0.0/16']

# HTTPS config
nginx['redirect_http_to_https'] = false
registry_nginx['redirect_http_to_https'] = false
mattermost_nginx['redirect_http_to_https'] = false

letsencrypt['enable'] = false

