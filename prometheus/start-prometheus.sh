#!/bin/bash

podman run -d \
	--name prometheus \
	--network nextcloud \
  	-p 9090:9090 \
  	-v `pwd`/config/prometheus.yml:/etc/prometheus/prometheus.yml \
  	docker.io/prom/prometheus
