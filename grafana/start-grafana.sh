#!/bin/bash

podman run -d \
	--name grafana \
	--network nextcloud \
        -p 3000:3000 \
        -v `pwd`/data:/var/lib/grafana \
        docker.io/grafana/grafana
