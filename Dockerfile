FROM dockercraft/alpine:3.7
MAINTAINER Daniel <daniel@topdevbox.com>

# How-To
 # Local Build: docker build -t nginx .
 # Local Run: docker run -it nginx nginx -v


ENV PACKAGES "nginx=1.12.2-r3"

RUN apk add --update $PACKAGES \
    && rm -rf /var/cache/apk/*

EXPOSE 443 80 8080 8000

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]