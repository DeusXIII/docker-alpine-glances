#!/bin/bash
# Lancement de Glances au sein d'un conteneur

docker run -d \
  --name glances \
  -e GLANCES_OPT="-w" \
  -v "$PWD"/glances.conf:/glances/conf/glances.conf:ro \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  -v /mnt:/mnt:ro \
  -p 61208:61208 \
  --pid host \
  --privileged \
  --network="host" \
  sjacouty/docker-glances
