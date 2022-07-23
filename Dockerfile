FROM debian:stable-slim

WORKDIR /var/zig

RUN apt update && apt upgrade -y && \
    apt install -y wget xz-utils vim && \
    wget https://ziglang.org/builds/zig-linux-x86_64-0.10.0-dev.3079+5dd59a542.tar.xz && \
    tar Jxfv zig-linux-x86_64-0.10.0-dev.3079+5dd59a542.tar.xz -C /usr/local/ && \
    rm zig-linux-x86_64-0.10.0-dev.3079+5dd59a542.tar.xz && \
    echo 'PATH="$PATH:/usr/local/zig-linux-x86_64-0.10.0-dev.3079+5dd59a542"' >> ~/.profile && . ~/.profile
