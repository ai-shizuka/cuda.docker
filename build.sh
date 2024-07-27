CURRENT_PATH="$(cd `dirname $0`; pwd)"
VERSION=v1.0
echo "version of cuda is ${VERSION}"

docker buildx build --platform  linux/amd64 -t cuda:${VERSION} .
#docker buildx build --build-arg HTTP_PROXY="http://192.168.8.222:8081" --build-arg HTTPS_PROXY="http://192.168.8.222:8081" --platform  linux/amd64 -t comfy:${VERSION} .
