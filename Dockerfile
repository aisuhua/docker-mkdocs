FROM python:3.9 AS builder

RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple \
&& pip install --no-cache mkdocs \
    mkdocs-material \
    mkdocs-git-revision-date-localized-plugin \
    mkdocs-glightbox

WORKDIR /src
