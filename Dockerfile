FROM mcr.microsoft.com/dotnet/core/sdk:2.1

RUN curl -O -L https://github.com/RicoSuter/NSwag/releases/download/NSwag-Build-1067/NSwag.zip

RUN apt-get update \
    && apt-get install -y --no-install-recommends unzip \
    && rm -rf /var/lib/apt/lists/* \
    && unzip -q ./NSwag.zip -d NSwag \
    && apt-get remove -y --purge unzip

ENTRYPOINT ["dotnet", "NSwag/NetCore21/dotnet-nswag.dll"]
CMD ["version"]
