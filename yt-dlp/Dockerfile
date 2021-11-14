FROM alpine

RUN set -xe \
      && apk add --no-cache ca-certificates \
      ffmpeg \
      openssl \
      python3 \
      aria2 \
      mutagen

RUN aria2c https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp

# Unlike youtube-dl, yt-dlp prefers mutagen to atomicparsley
# RUN apk --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing add atomicparsley

WORKDIR /data

ENTRYPOINT ["yt-dlp"]
CMD ["--help"]
