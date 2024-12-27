ARG VERSION="latest"

FROM squidfunk/mkdocs-material:${VERSION}

# https://squidfunk.github.io/mkdocs-material/blog/2022/05/05/chinese-search-support/
RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/
RUN pip install jieba
RUN pip install mkdocs-git-authors-plugin
RUN pip install mkdocs-git-committers-plugin
RUN pip install mkdocs-git-revision-date-localized-plugin
