#!/usr/bin/bash
MAILDOMAIN=$1
docker run --name dns-server -d -it \
-p 172.28.0.1:53:53/tcp \
-p 172.28.0.1:53:53/udp \
--net=zimbra-net \
--cap-add=NET_ADMIN \
4km3/dnsmasq \
--address=/${MAILDOMAIN}/172.28.0.3 \
--domain=${MAILDOMAIN} \
--mx-host=${MAILDOMAIN},mail.${MAILDOMAIN}.com,0
