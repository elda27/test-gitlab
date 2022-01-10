FROM nginx:1.21

# Modify group for gitlab 
RUN groupadd -g 999 gitlab-www\
  && groupadd -g 998 git\
  && usermod -aG git,gitlab-www nginx
