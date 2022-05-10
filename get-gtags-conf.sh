#!/bin/bash

IMAGE_NAME=global
FILEPATH=/etc/gtags/gtags.conf

CONTAINER_ID=`docker create $IMAGE_NAME`
docker cp $CONTAINER_ID:$FILEPATH data/
docker rm $CONTAINER_ID
