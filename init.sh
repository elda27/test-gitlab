# /bin/sh
# source .env
# mkdir -p \
#   $GITLAB_ROOT/data \
#   $GITLAB_ROOT/config \
#   $GITLAB_ROOT/logs 

docker ps -a -q -f name=ch1_gitlab_gitlab | xargs -i docker exec {} gitlab-ctl stop
docker ps -a -q -f name=ch1_gitlab_gitlab | xargs -i docker cp gitlab/gitlab.rb {}:/etc/gitlab/gitlab.rb
docker ps -a -q -f name=ch1_gitlab_gitlab | xargs -i docker cp gitlab/relative_url.rb {}:/var/opt/gitlab/gitlab-rails/etc/relative_url.rb
docker ps -a -q -f name=ch1_gitlab_gitlab | xargs -i docker cp gitlab/puma.rb {}:/var/opt/gitlab/gitlab-rails/etc/puma.yml
docker ps -a -q -f name=ch1_gitlab_gitlab | xargs -i docker cp gitlab/gitlab.yml {}:/var/opt/gitlab/gitlab-rails/etc/gitlab.yml
docker ps -a -q -f name=ch1_gitlab_gitlab | xargs -i docker cp gitlab/config.yml {}:/var/opt/gitlab/gitlab-shell/config.yml
docker ps -a -q -f name=ch1_gitlab_gitlab | xargs -i docker exec {} gitlab-ctl reconfigure
docker ps -a -q -f name=ch1_gitlab_gitlab | xargs -i docker exec {} gitlab-ctl start
