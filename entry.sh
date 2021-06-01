#!/bin/bash

echo "balenaBlocks daprd version: $(cat VERSION)"

exec daprd $DAPR_LOGLEVEL --components-path /app/components --app-protocol grpc --app-port 50051 --app-id $1 

