FROM tbmatuka/ci-deploy:latest

MAINTAINER Tin Benjamin Matuka <mail@tbmatuka.com>

USER root

RUN wget -nv 'https://github.com/tbmatuka/websocket-notify/releases/download/v1.4/websocket-notify-v1.4-linux-amd64.tar.gz' && \
    tar -xzf websocket-notify-v1.4-linux-amd64.tar.gz -C /usr/bin/ websocket-notify && \
    rm websocket-notify-v1.4-linux-amd64.tar.gz

USER www-data

ENTRYPOINT ["/usr/bin/websocket-notify"]

CMD []
