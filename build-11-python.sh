#!/bin/bash

tag=v0.0.1-python
image=neiromc/dv-postgresql-11

build_log=build-11-python.log
if [ "$(grep $tag $build_log)" ]; then
  echo "[!] WARN :: Last built version is equal current. If you need to rebuild this version ($tag) you need to remove version tag from $build_log file"
  exit 1
fi

docker build ./11 -f ./11/Dockerfile.python -t $image:$tag --no-cache \
  && docker push $image:$tag \
  && docker tag $image:$tag $image:latest \
  && docker push $image:latest \
  && echo $tag > $build_log

