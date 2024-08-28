#!/bin/bash

podman run -dt \
    --name nextcloud-postgres \
    --network nextcloud \
    -p 5432:5432 \
    -e POSTGRES_DB=nextcloud \
    -e POSTGRES_USER=nextcloud \
    -e POSTGRES_PASSWORD=nextcloud \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -v `pwd`/data:/var/lib/postgresql/data \
    docker.io/postgres:latest
