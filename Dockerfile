FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine3.14

LABEL org.opencontainers.image.source="https://github.com/Countingup/docker-nswag"

RUN apk add --no-cache --update --upgrade ncurses-terminfo-base libssl1.1 libcrypto1.1 unzip curl busybox \
    && curl -O -L https://github.com/RicoSuter/NSwag/releases/download/NSwag-Build-1132/NSwag.zip \
    && unzip -q ./NSwag.zip -d NSwag \
    && apk del unzip curl git \
    && rm -f NSwag.zip

ENTRYPOINT ["dotnet", "NSwag/Net50/dotnet-nswag.dll"]
CMD ["version"]
