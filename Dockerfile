FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04
MAINTAINER er1cw00
ENV GRADIO_SERVER_NAME=0.0.0.0

COPY setup.sh /tmp

RUN set -ex \
   && chmod a+x /tmp/setup.sh \
   && /tmp/setup.sh 
