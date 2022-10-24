FROM debian:buster

LABEL maintainer="tux@md.freifunk.net"

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
    bind9 \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/cache/apt/*

COPY --from=install /tmp/bind /etc/bind

EXPOSE 53/udp 53/tcp

COPY named.conf.local /etc/bind
COPY ffmd.zone /etc/bind

CMD ["/usr/sbin/named", "-f", "-g"]
