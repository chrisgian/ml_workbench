# Project: Reusable workspace for ML tasks

## Goals:
Reusable workspace for tasks

## How to use:
Step 1: clone repo
```
git clone https://github.com/chrisgian/ml_workbench

cd ml_workbench
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
