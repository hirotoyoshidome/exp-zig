FROM debian:stable-slim

WORKDIR /var/zig

RUN apt update && apt upgrade -y && \
    apt install -y wget xz-utils vim && \
    wget https://ziglang.org/download/0.9.1/zig-linux-aarch64-0.9.1.tar.xz && \
    tar Jxfv zig-linux-aarch64-0.9.1.tar.xz -C /usr/local/ && \
    rm zig-linux-aarch64-0.9.1.tar.xz && \
    echo 'PATH="$PATH:/usr/local/zig-linux-aarch64-0.9.1"' >> ~/.profile && . ~/.profile
