#!/bin/bash

set -euxo pipefail

# ENV
NB_USER="tarte"
HOST_PORT=8888
GUEST_PORT=8888
CONTAINER_NAME=$1
IMAGE_NAME="tarte/kaggle-base"
WORK_DIR="$(dirname "$PWD")"
GPU=""
# GPU="--gpus all"

# Make src directory if not exist
if [ ! -d "$WORK_DIR"/src/"$1" ]; then
    mkdir -p "$WORK_DIR"/src/"$1"
fi

# RUN
docker run $GPU -d -it \
-v "$WORK_DIR"/src/"$1"/:/home/"$NB_USER"/work/src/ \
-p "$HOST_PORT":"$GUEST_PORT" --name "$CONTAINER_NAME" "$IMAGE_NAME" \
jupyter notebook --allow-root

docker exec -it "$CONTAINER_NAME" /bin/bash
