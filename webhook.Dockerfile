ARG VERSION="latest"

FROM squidfunk/mkdocs-material:${VERSION}

# https://squidfunk.github.io/mkdocs-material/blog/2022/05/05/chinese-search-support/
RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/
RUN pip install jieba
RUN pip install mkdocs-git-authors-plugin
RUN pip install mkdocs-git-committers-plugin
RUN pip install mkdocs-git-revision-date-localized-plugin

# ============================ #

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
  && apk add --no-cache git rsync

COPY webhook /

RUN chmod a+x /redeploy.sh \
  && mkdir -p /site \
  && chown -R 1001:1001 /site \
  && chmod 775 /site

USER 1001

WORKDIR /site

ENTRYPOINT ["/webhook"]
CMD ["-hooks", "/hooks.json", "-verbose", "-port", "9000"]
