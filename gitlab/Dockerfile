FROM gitlab/gitlab-ce

WORKDIR /var/opt/gitlab/
RUN mkdir -p ./gitlab-rails/etc/ && chown git:git ./gitlab-rails/etc/
RUN mkdir -p ./gitlab-shell && chown git:git ./gitlab-shell

ADD --chown=root:root gitlab.rb /etc/gitlab/gitlab.rb
ADD --chown=root:root relative_url.rb /var/opt/gitlab/gitlab-rails/etc/relative_url.rb
ADD --chown=root:root puma.rb /var/opt/gitlab/gitlab-rails/etc/puma.yml
ADD --chown=root:git gitlab.yml /var/opt/gitlab/gitlab-rails/etc/gitlab.yml
ADD --chown=root:git config.yml /var/opt/gitlab/gitlab-shell/config.yml

WORKDIR /