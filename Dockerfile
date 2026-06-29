FROM alpine:3

RUN apk add --no-cache git cgit lighttpd lowdown

RUN mkdir -p /var/cache/cgit /srv/git /run/lighttpd
COPY lighttpd.conf /etc/lighttpd/lighttpd.conf
COPY cgitrc /etc/cgitrc

EXPOSE 80

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
