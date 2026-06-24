FROM ghcr.io/zaproxy/zaproxy:stable

USER root

COPY tarama.sh /zap/tarama.sh

RUN chmod +x /zap/tarama.sh

WORKDIR /zap/wrk

ENTRYPOINT ["/zap/tarama.sh"]