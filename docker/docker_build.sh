#!/bin/bash

# build the image
docker build -t tarte/kaggle-base --build-arg JUPYTER_PASSWD="$JUPYTER_PASSED" .
