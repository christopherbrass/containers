#!/bin/bash

sudo docker pull ghcr.io/christopherbrass/containers:my_workspace
sudo docker image prune -f
sudo docker run --interactive --tty --rm --mount type=bind,source="$(pwd)"/,target=/workspace --workdir=/workspace --name my_workspace_temp ghcr.io/christopherbrass/containers:my_workspace fish
