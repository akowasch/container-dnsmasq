FROM alpine:3.11.6

LABEL maintainer "andreas@kowasch.de"

ENV DNSMASQ_VERSION "2.80-r5"
ARG DNSMASQ_DNS_PORT="56"
ARG DNSMASQ_DHCP_PORT="67"

RUN apk --no-cache add dnsmasq=${DNSMASQ_VERSION}

VOLUME /etc/dnsmasq

EXPOSE ${DNSMASQ_DNS_PORT}/tcp ${DNSMASQ_DNS_PORT}/udp ${DNSMASQ_DHCP_PORT}/udp

ENTRYPOINT ["dnsmasq", "-k", "-u", "dnsmasq", "-g", "dnsmasq"]
