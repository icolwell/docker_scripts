#!/bin/bash
set -e
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

REPO_NAME="$1"
TAG_NAME="$2"

if [ -z $REPO_NAME ] || [ -z $TAG_NAME ]; then
	echo "Please provide both a docker repo name and tag name"
	echo "Example:"
	echo "bash run_image.bash repo_name tag_name"
	exit 1
fi

docker run -it "iancolwell/$REPO_NAME:$TAG_NAME" /bin/bash
