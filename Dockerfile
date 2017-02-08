FROM pstauffer/inotify:stable

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

RUN mkdir -p /opt/service
WORKDIR /opt/service
ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]
