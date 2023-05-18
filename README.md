# docker-mkdocs

## Build Manual

```sh
git clone git@github.com:aisuhua/docker-mkdocs.git
cd docker-mkdocs
docker build -t aisuhua/docker-mkdocs:latest .
```

## Usage

```sh
docker run --rm --name -p 8000:8000 -v $PWD:/src aisuhua/docker-mkdocs:latest mkdocs serve --dev-addr 0.0.0.0:8000
docker run --rm -v $PWD:/src aisuhua/docker-mkdocs:latest mkdocs build --clean
```

## APP

Dockerfile

```dockerfile
FROM aisuhua/docker-mkdocs:latest
COPY . .
RUN mkdocs build --clean
```

Build

```sh
docker build -t myapp:latest .
```


