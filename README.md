# nswag

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/countingup/nswag.svg)](https://hub.docker.com/r/countingup/nswag/builds/) ![Docker Image Size](https://img.shields.io/docker/image-size/countingup/nswag/latest)

.NET Core + [NSwag](https://github.com/RicoSuter/NSwag).

Built on top of mcr.microsoft.com/dotnet/sdk:5.0-alpine3.13-amd64

The container exposes [nswag as an executable](https://github.com/RicoSuter/NSwag/wiki/CommandLine).

## Build locally

```
$ cd docker-nswag
$ docker build -t countingup/nswag .
```

## Run (will pull from dockerhub)

```
$ docker run -it countingup/nswag help
```
