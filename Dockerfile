FROM alpine:3.11.6

LABEL maintainer "andreas@kowasch.de"

RUN apk --no-cache add dnsmasq

VOLUME /etc/dnsmasq

EXPOSE 53 53/udp

ENTRYPOINT ["dnsmasq", "-k"]
