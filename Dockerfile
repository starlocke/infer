FROM openjdk:11

ENV INFER_VERSION 0.17.0

RUN curl -sSL "https://github.com/facebook/infer/releases/download/v$INFER_VERSION/infer-linux64-v$INFER_VERSION.tar.xz" | tar -C /opt -xJ \
  && ln -s "/opt/infer-linux64-v$INFER_VERSION/bin/infer" /usr/local/bin/infer
