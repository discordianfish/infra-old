FROM nginx
VOLUME [ "/cache", "/logs", "/www" ]
ADD https://github.com/docker-infra/reefer/releases/download/v0.0.3/reefer.gz /usr/bin/reefer.gz
RUN gunzip /usr/bin/reefer.gz && chmod a+x /usr/bin/reefer
ADD . /etc
EXPOSE 80 443
ENTRYPOINT [ \
	"reefer", "-t", "/etc/nginx.d/server_key.pem.tmpl", \
	"nginx", "-c", "/etc/nginx.conf" \
]
