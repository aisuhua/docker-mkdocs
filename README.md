# docker-mkdocs

该项目基于 mkdocs-material 官方镜像构建出了 2 个有特别用途的镜像：

1. aisuhua/mkdocs 镜像安装了支持中文搜索和获取 git 信息的插件
2. aisuhua/mkdocs:xxx-webhook 实现了仓库文档更新后自动重新生成文档 


## 使用

```sh
docker-compose build
docker-compose up
```

上面将会启动 mkdocs 服务，8000 端口可以查看文档。

同时，如果你文档已经上传到远程仓库，如 github，那么请先修改 `REPO_URL` 参数，然后重启它。
