#!/bin/bash

IMAGE_NAME="brandons-website"
CODE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

docker run \
	-it \
	-v $CODE_DIR:/opt/share \
	-w /opt/share \
	-p 4000:4000 \
	$IMAGE_NAME
