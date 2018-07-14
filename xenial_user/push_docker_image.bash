#!/bin/bash
set -e
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "$SCRIPT_DIR"

docker tag xenial_user iancolwell/xenial_user
docker push iancolwell/xenial_user
