docker create \
  --name=transmission \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Seoul \
  -e TRANSMISSION_WEB_HOME=/combustion-release/ `#optional` \
  -p 9091:9091 \
  -p 51413:51413 \
  -p 51413:51413/udp \
  -v /root/transmission/config:/config \
  -v /root/transmission/downloads:/downloads \
  -v /root/transmission/watch:/watch \
  --restart unless-stopped \
  linuxserver/transmission

