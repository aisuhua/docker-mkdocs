FROM python:3.9-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
&& apk add --no-cache git \
  gcc \
  musl-dev \
  python3-dev \
  pango \
  zlib-dev \
  jpeg-dev \
  openjpeg-dev \
  g++ \
  libffi-dev \
  ttf-dejavu \
  ttf-freefont \
  weasyprint

RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple \
&& pip install --no-cache-dir mkdocs \
    mkdocs-material \
    mkdocs-git-revision-date-localized-plugin \
    mkdocs-glightbox \
    mkdocs-git-authors-plugin \
    jieba \
    mkdocs-with-pdf 

RUN mkdir -p /usr/share/fonts/chinese/TrueType/
COPY fonts/simsun.ttc /usr/share/fonts/chinese/TrueType/
COPY fonts/simsun.ttf /usr/share/fonts/chinese/TrueType/

ENV XDG_CACHE_HOME=/tmp

WORKDIR /src

