# docker-mkdocs

## git clone

```sh
git clone git@github.com:aisuhua/docker-mkdocs.git
cd docker-mkdocs
```

## build

```sh
docker-compose build
```

## Usage

new

```sh
docker run --rm -u $UID -v ${PWD}:/docs aisuhua/mkdocs-material:latest new .
```

run

```sh
docker run --rm -p 8000:8000 -u $UID -v ${PWD}:/docs aisuhua/mkdocs-material:latest
```

build

```sh
docker run --rm -u $UID -v ${PWD}:/docs aisuhua/mkdocs-material:latest build
```

## APP

Dockerfile

```dockerfile
FROM aisuhua/docker-mkdocs:latest
COPY . /docs
RUN mkdocs build --clean
```

Build

```sh
docker build -t myapp:latest .
```

## Links

1. https://github.com/docker/build-push-action/issues/33#issuecomment-1265891667
2. https://github.com/marketplace/actions/build-and-push-docker-images
