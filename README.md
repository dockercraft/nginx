# nginx
HTTP server

# Quick start
* Local Build: docker build -t nginx .
* Local Run: docker run -it nginx nginx -v 
* Run as server

```
docker run -it \
-v /Dockercraft/nginx/nginx:/etc/nginx:ro \
-v /Dockercraft/nginx/log:/var/log/nginx \
-v /Dockercraft/nginx/run:/run/nginx \
-v /Dockercraft/nginx/www:/var/www \
-p 8090:80 nginx
```

# Supported tags and respective `Dockerfile` links
* `1.12.2-r3`, `latest`

# Version
* 1.12.2-r3
   * nginx 1.12.2-r3
   * busybox 1.27.2-r8
