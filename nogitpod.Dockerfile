FROM gitpod/workspace-full 

USER root

ENV NGINX_DOCROOT_IN_REPO="public"
ENV GITPOD_REPO_ROOT="/usr/share/nginx/"

ADD generate.sh /usr/bin/generate.sh
ADD public/index.html /usr/share/nginx/public/
RUN generate.sh

USER gitpod

CMD ["nginx", "-g", "daemon off;"]