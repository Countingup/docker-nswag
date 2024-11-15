# nswag

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/countingup/nswag.svg)](https://hub.docker.com/r/countingup/nswag/builds/) ![Docker Image Size](https://img.shields.io/docker/image-size/countingup/nswag/latest)

.NET Core + [NSwag](https://github.com/RicoSuter/NSwag).

Built on top of mcr.microsoft.com/dotnet/sdk:6.0-alpine3.17

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
 - 2024-11-12 -- Manually updated `krb5-libs` to fix security vulnerability
 - 2024-06-19 -- Manually updated `busybox` to fix security vulnerability
 - 2024-01-31 -- Rebuild to update base image for security vulns (libcrypto3)
 - 2024-01-16 -- Rebuild to update base image for security vulns (libcrypto3)
 - 2023-07-19 -- Rebuild to update base image for security vulns (libcrypto3)
 - 2023-06-08 -- Just upgrade ncurses-terminfo-base, rather than ncurses
 - 2023-06-07 -- Rebuild to update base image for security vulnerability (ncurses & libssl3)
 - 2023-04-24 -- Downgraded to dotnet/sdk:6-alpine3.17 to support Apple Silicon
 - 2023-04-18 -- Update base image to dotnet/sdk:7-alpine:3.17, NSwag to 13.18.2
 - 2023-02-10 -- Upgrade libssl1.1 for security vulns
 - 2022-09-07 -- Upgrade zlib for security vulns
 - 2022-07-18 -- Upgrade ncurses-terminfo-base, libssl1.1 and libcrypto1.1 for security vulns
 - 2022-04-05 -- Update busybox for security vulns
 - 2022-03-30 -- Rebuild to update base image for security vulns
 - 2022-03-23 -- Rebuild to update base image for security vulns
 - 2022-01-19 -- Remove git from image after building
 - 2022-01-17 -- Rebuild to update base image for security vulns
 - 2021-11-06 -- Update to Alpine 3.14 base image
