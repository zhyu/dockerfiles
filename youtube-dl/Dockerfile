FROM alpine

RUN set -xe \
      && apk add --no-cache ca-certificates \
      ffmpeg \
      openssl \
      python3 \
      aria2 \
      && pip3 install youtube-dl

RUN apk --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing add atomicparsley

WORKDIR /data

ENTRYPOINT ["youtube-dl"]
CMD ["--help"]
