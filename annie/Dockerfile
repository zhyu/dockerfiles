FROM alpine

RUN set -xe \
      && apk add --no-cache ca-certificates \
      ffmpeg \
      curl \
      jq \
      && curl -L $(curl https://api.github.com/repos/iawia002/annie/releases/latest | jq -r '.assets[] | select(.name | contains("Linux_64")) | .browser_download_url') > annie.tar.gz \
      && tar zxvf annie.tar.gz \
      && mv annie /usr/local/bin/annie \
      && rm -rf annie.tar.gz

WORKDIR /data

ENTRYPOINT ["annie"]
