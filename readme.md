# Project: Reusable workspace for ML tasks

## Goals:
A reusable cross platform docker container for data projects

## How to use:
Step 1: clone repo
```
git clone
```

Step 2: build image

```
docker build -t dev_box .
```

Step 3: run image

```
docker run -it --rm -p 8888:8888 \
 --mount type=bind,source="$(pwd)"/project,target=/project \
dev_box
```