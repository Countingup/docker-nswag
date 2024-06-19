FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine3.17

LABEL org.opencontainers.image.source="https://github.com/Countingup/docker-nswag"

RUN apk add --no-cache --update --upgrade unzip libssl3 ncurses-terminfo-base busybox \
    && curl -O -L https://github.com/RicoSuter/NSwag/releases/download/v13.18.2/NSwag.zip \
    && unzip -q ./NSwag.zip -d NSwag \
    && apk del unzip curl git \
    && rm -f NSwag.zip

ENTRYPOINT ["dotnet", "NSwag/Net60/dotnet-nswag.dll"]
CMD ["version"]
