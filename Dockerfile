FROM gsoci.azurecr.io/giantswarm/nginx-unprivileged:1.26-alpine

VOLUME ["/tmp/nginx"]

USER 0

# remove default configuration
RUN rm -r /etc/nginx/conf.d

ADD ./nginx.conf /etc/nginx/

USER 101

EXPOSE 8000
