FROM mcr.microsoft.com/dotnet/sdk:10.0-alpine3.23

LABEL org.opencontainers.image.source="https://github.com/Countingup/docker-nswag"

RUN apk add --no-cache --update --upgrade unzip libssl3 ncurses-terminfo-base busybox krb5-libs \
    && curl -O -L https://github.com/RicoSuter/NSwag/releases/download/v14.6.3/NSwag.zip \
    && unzip -q ./NSwag.zip -d NSwag \
    && apk del unzip curl git \
    && rm -f NSwag.zip

ENTRYPOINT ["dotnet", "NSwag/Net100/dotnet-nswag.dll"]
CMD ["version"]
