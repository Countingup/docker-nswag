# nswag

[![Docker Automated build](https://img.shields.io/docker/build/countingup/nswag.svg)](https://hub.docker.com/r/countingup/nswag/builds/)

.NET Core + [NSwag](https://github.com/RicoSuter/NSwag).

Built on top of mcr.microsoft.com/dotnet/core/runtime:2.1.

## Build locally

```
cd docker-nswag
docker build -t countingup/nswag .
```

## Usage

The container exposes [nswag as an executable](https://github.com/RicoSuter/NSwag/wiki/CommandLine).

By default it will display the version and exit. Run with "help" for instructions.

```
docker run countingup/nswag:latest help
```
