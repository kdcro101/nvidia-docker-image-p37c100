#!/bin/bash

# docker build -t dev-p37c100 .

CID=$(docker run -d --gpus all dev-rapids)

echo $CID

docker export $CID > image.tar
echo "export done"
cat image.tar | docker import - p37c100:latest
echo "import done"
