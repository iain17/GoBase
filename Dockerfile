FROM pstauffer/inotify:stable

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

RUN mkdir -p /pipeline/output
WORKDIR /pipeline/output
ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]
