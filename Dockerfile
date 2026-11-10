FROM alpine:3.24 AS download
RUN apk add --no-cache curl unzip \
    && curl -fsSL -o NSwag.zip https://github.com/RicoSuter/NSwag/releases/download/v14.6.3/NSwag.zip \
    && echo "dd72fd8c7ca009f126fd3ff90289a21f58af72a5457babc7f17dd80eb0c64fc3  NSwag.zip" | sha256sum -c - \
    && unzip -q NSwag.zip 'Net100/*' -d /NSwag

FROM mcr.microsoft.com/dotnet/aspnet:10.0-alpine3.24
RUN apk upgrade --no-cache
COPY --from=download /NSwag /NSwag
ENTRYPOINT ["dotnet", "/NSwag/Net100/dotnet-nswag.dll"]
CMD ["version"]
