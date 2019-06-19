FROM mcr.microsoft.com/dotnet/core/runtime:2.1

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
	&& apt update \
&& apt install -y nodejs

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version v1.16.0

RUN yarn add nswag@13.0.1

RUN yarn run nswag ...
