#!/usr/bin/env bash
docker build -t gf-notebook .
docker run -p 8888:8888 -v $PWD/notebooks:/home/jovyan/notebooks gf-notebook