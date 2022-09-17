FROM alpine

RUN set -xe \
      && apk add --no-cache ca-certificates \
      ffmpeg \
      openssl \
      python3 \
      aria2 \
      mutagen

RUN aria2c https://github.com/ytdl-patched/ytdl-patched/releases/latest/download/ytdl-patched -o /usr/local/bin/ytdl-patched
RUN chmod a+rx /usr/local/bin/ytdl-patched

# Unlike youtube-dl, yt-dlp prefers mutagen to atomicparsley
# RUN apk --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing add atomicparsley

WORKDIR /data

ENTRYPOINT ["ytdl-patched"]
CMD ["--help"]
