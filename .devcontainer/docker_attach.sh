DIRECTORY_NAME="ruby-on-rails"
IMAGE_NAME="chickentinder.info.image"
CONTAINER_NAME="chickentinder.info.image.container"
PORT="3000"

docker container run \
    -it \
    --rm \
    --name $IMAGE_NAME \
    --user vscode \
    --mount type=bind,source=/home/ubuntu/Projects/$DIRECTORY_NAME,target=/workspace/$DIRECTORY_NAME \
    --workdir /workspace/$DIRECTORY_NAME \
    --publish $PORT:$PORT \
    $IMAGE_NAME /bin/bash
