#!/bin/bash
# Lancement de Glances au sein d'un conteneur

docker run -d \
  --name glances \
  -e GLANCES_OPT="-w" \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  -p 61208:61208 \
  --pid host \
  sjacouty/docker-glances
