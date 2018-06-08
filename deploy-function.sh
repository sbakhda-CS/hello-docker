#!/usr/bin/env bash
set -e

docker build -t $1 .
docker push $1

echo -e "\n\nRunning $1 on docker...\n\n"
cat model/test_req.json | docker run -i $1 ubuntu /bin/bash -c 'cat'

echo -e "\n\nRunning $1 on cortex...\n\n"
cortex actions deploy --docker $1 hd/hello_docker "$(cat model/test_req.json)"