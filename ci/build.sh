#!/bin/bash

podman build --no-cache . --file=Dockerfile-base -t "arch-gnu-openmpi-base"
test $? = 0 || { echo "base container build failed, exiting..."; exit 1;}

podman build --no-cache . --file=Dockerfile-fms -t "fms-gnu-ci"
test $? = 0 || { echo "fms container build failed, exiting..."; exit 1;}

podman build --no-cache . --file=Dockerfile-frenct -t "frenct-gnu-ci"
test $? = 0 || { echo "fre-nctools container build failed, exiting..."; exit 1;}

podman build --no-cache . --file=Dockerfile-frecli -t "frecli-gnu-ci"
test $? = 0 || { echo "frecli container build failed, exiting..."; exit 1;}
