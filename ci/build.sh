#!/bin/bash

podman build --no-cache . --file=Dockerfile-base -t "arch-gnu-openmpi-base"

podman build --no-cache . --file=Dockerfile-fms -t "fms-gnu-ci"

podman build --no-cache . --file=Dockerfile-frenct -t "frenct-gnu-ci"

podman build --no-cache . --file=Dockerfile-frecli -t "frecli-gnu-ci"
