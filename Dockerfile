FROM resin/armv7hf-debian

LABEL maintainer="syed.samiruddin@gmail.com"

RUN [ "cross-build-start" ]

RUN apt-get update && \
    apt-get --no-install-recommends -y install wget libunwind8 libunwind8-dev gettext libicu-dev liblttng-ust-dev libcurl4-openssl-dev libssl-dev uuid-dev unzip

RUN wget https://dotnetcli.blob.core.windows.net/dotnet/Runtime/release/2.0.0/dotnet-runtime-latest-linux-arm.tar.gz && \
    mkdir -p /opt/dotnet && \
    tar zxf dotnet-runtime-latest-linux-arm.tar.gz -C /opt/dotnet && \
    rm dotnet-runtime-latest-linux-arm.tar.gz && \
    ln -s /opt/dotnet/dotnet /usr/local/bin

RUN [ "cross-build-end" ]
