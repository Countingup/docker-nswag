# nswag

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/countingup/nswag.svg)](https://hub.docker.com/r/countingup/nswag/builds/) ![Docker Image Size](https://img.shields.io/docker/image-size/countingup/nswag/latest)

.NET Core + [NSwag](https://github.com/RicoSuter/NSwag).

Built on top of mcr.microsoft.com/dotnet/sdk:5.0-alpine3.14

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

## Changelog

 - 2022-04-05 -- Update busybox for security vulns
 - 2022-03-30 -- Rebuild to update base image for security vulns
 - 2022-03-23 -- Rebuild to update base image for security vulns
 - 2022-01-19 -- Remove git from image after building
 - 2022-01-17 -- Rebuild to update base image for security vulns
 - 2021-11-06 -- Update to Alpine 3.14 base image
