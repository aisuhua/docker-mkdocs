FROM python:3.9-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
&& apk add --no-cache git \
&& pip config set global.index-url https://mirrors.aliyun.com/pypi/simple \
&& pip install --no-cache-dir mkdocs \
    mkdocs-material \
    mkdocs-git-revision-date-localized-plugin \
    mkdocs-glightbox \
    mkdocs-git-authors-plugin

WORKDIR /src
