FROM ghcr.io/zaproxy/zaproxy:stable

USER root

COPY tarama.sh /zap/scan.sh

RUN chmod +x /zap/scan.sh

WORKDIR /zap/wrk

ENTRYPOINT ["/zap/scan.sh"]