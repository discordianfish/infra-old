FROM nginx
VOLUME [ "/cache", "/logs", "/www" ]
ADD . /etc
RUN nginx -c /etc/nginx.conf -t
EXPOSE 80 443
