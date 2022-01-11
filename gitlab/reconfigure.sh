echo "Run reconfigure script"
if [ -f "/var/opt/gitlab/gitlab-rails/etc/relative_url.rb" ]; then
  exit
fi

gitlab-ctl stop

cp ./gitlab.rb /etc/gitlab/gitlab.rb
cp ./relative_url.rb /var/opt/gitlab/gitlab-rails/etc/relative_url.rb
cp ./puma.rb /var/opt/gitlab/gitlab-rails/etc/puma.yml
cp ./gitlab.yml /var/opt/gitlab/gitlab-rails/etc/gitlab.yml
cp ./config.yml /var/opt/gitlab/gitlab-shell/config.yml

gitlab-ctl reconfigure
gitlab-ctl start
