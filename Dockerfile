FROM ghcr.io/zaproxy/zaproxy:stable

USER root

COPY scan.sh /zap/scan.sh

RUN chmod +x /zap/scan.sh

WORKDIR /zap/wrk

ENTRYPOINT ["/zap/scan.sh"]