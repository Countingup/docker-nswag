FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine3.13-amd64

RUN apk add --no-cache --update unzip curl \
    && curl -O -L https://github.com/RicoSuter/NSwag/releases/download/NSwag-Build-1132/NSwag.zip \
    && unzip -q ./NSwag.zip -d NSwag \
    && apk del unzip curl \
    && rm -f NSwag.zip

ENTRYPOINT ["dotnet", "NSwag/Net50/dotnet-nswag.dll"]
CMD ["version"]
