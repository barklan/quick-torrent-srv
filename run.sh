#!/bin/bash

docker build -t nginx:barklan .
docker run --rm -d -v /root/torrents:/home/app/media -p 80:80 nginx:barklan

# docker run --rm \
# -v /home/barklan/Downloads/torrents/config:/config \
# -v /home/barklan/Downloads/torrents/downloads:/downloads \
# -e PGID=1000 -e PUID=1000 -e TZ=Europe/Madrid \
# -p 9443:443 \
# -p 3000:3000 \
# -p 51415-51415:51415-51415 \
# romancin/rutorrent-flood:0.9.7
