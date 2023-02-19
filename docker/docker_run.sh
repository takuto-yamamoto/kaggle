#!/bin/bash
# Make src directory if not exist
if [ ! -d ./src/"$1" ]; then
    mkdir -p src/"$1"
fi

# ENV
NB_USER='tarte'
HOST_PORT=8888
GUEST_PORT=8888
CONTAINER_NAME=$1
IMAGE_NAME='tarte/kaggle-base'

# RUN
docker run --gpu all -d -it --rm -v "$(pwd)"/src/"$1":/home/$NB_USER/work/src \
-p $HOST_PORT:$GUEST_PORT --name "$CONTAINER_NAME" $IMAGE_NAME \
jupyter notebook --allow-root

docker exec -it "$CONTAINER_NAME" /bin/bash
