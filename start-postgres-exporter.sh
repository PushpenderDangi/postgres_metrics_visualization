#!/bin/bash

podman run -d \
	--name postgres-exporter \
	--network nextcloud \
  	-e DATA_SOURCE_NAME="postgresql://nextcloud:nextcloud@nextcloud-postgres:5432/nextcloud?sslmode=disable" \
  	-p 9187:9187 \
  	prometheuscommunity/postgres-exporter:latest
