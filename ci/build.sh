#!/bin/bash

podman build . --file=Dockerfile-base -t "arch-gnu-openmpi-base"

podman build . --file=Dockerfile-fms -t "fms-gnu-ci"

podman build . --file=Dockerfile-frenct -t "frenct-gnu-ci"

podman build . --file=Dockerfile-frecli -t "frecli-gnu-ci"
