#!/bin/bash

sudo docker pull ghcr.io/christopherbrass/containers:fedora
sudo docker run --interactive --tty --rm --mount type=bind,source="$(pwd)"/,target=/your_code --workdir=/your_code ghcr.io/christopherbrass/containers:fedora fish
