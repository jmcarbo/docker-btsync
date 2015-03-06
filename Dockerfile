# Instructions from the blog post at http://blog.bittorrent.com/2013/10/22/sync-hacks-deploy-bittorrent-sync-with-docker/
FROM ubuntu:14.04
MAINTAINER Joan Marc Carbo Arnau <jmcarbo@gmail.com>
RUN apt-get update && apt-get install -y curl
RUN curl -o /usr/bin/btsync.tar.gz https://download-cdn.getsyncapp.com/stable/linux-x64/BitTorrent-Sync_x64.tar.gz
RUN cd /usr/bin && tar -xzvf btsync.tar.gz && rm btsync.tar.gz
RUN mkdir -p /btsync/.sync
RUN mkdir -p /var/run/btsync
RUN mkdir -p /btsync/.sync
RUN mkdir -p /data
EXPOSE 8888
EXPOSE 55555
ADD start-btsync /usr/bin/start-btsync
RUN chmod +x /usr/bin/start-btsync
VOLUME ["/data"]
ENTRYPOINT ["start-btsync"]
