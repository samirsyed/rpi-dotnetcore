FROM resin/armv7hf-debian

RUN [ "cross-build-start" ]

RUN apt-get update

RUN apt-get install wget libunwind8 libunwind8-dev gettext libicu-dev liblttng-ust-dev libcurl4-openssl-dev libssl-dev uuid-dev unzip

RUN wget https://dotnetcli.blob.core.windows.net/dotnet/Runtime/release/2.0.0/dotnet-runtime-latest-linux-arm.tar.gz

RUN mkdir -p /opt/dotnet

RUN tar zxf dotnet-runtime-latest-linux-arm.tar.gz -C /opt/dotnet

RUN ln -s /opt/dotnet/dotnet /usr/local/bin

RUN [ "cross-build-end" ]
