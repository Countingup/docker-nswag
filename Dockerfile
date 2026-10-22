FROM mcr.microsoft.com/dotnet/sdk:10.0-alpine3.24

LABEL org.opencontainers.image.source="https://github.com/Countingup/docker-nswag"

RUN apk add --no-cache --update --upgrade unzip libssl3 ncurses-terminfo-base busybox krb5-libs \
    && curl -O -L https://github.com/RicoSuter/NSwag/releases/download/v14.6.3/NSwag.zip \
    && echo "dd72fd8c7ca009f126fd3ff90289a21f58af72a5457babc7f17dd80eb0c64fc3  NSwag.zip" | sha256sum -c - \
    && unzip -q ./NSwag.zip -d NSwag \
    && apk del unzip curl git \
    && rm -f NSwag.zip

ENTRYPOINT ["dotnet", "NSwag/Net100/dotnet-nswag.dll"]
CMD ["version"]
