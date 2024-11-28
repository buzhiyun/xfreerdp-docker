FROM debian:11.11-slim
# FROM debian:12.8-slim

# RUN cat /etc/apt/sources.list && sed -i 's#deb.debian.org#mirrors.aliyun.com#g' /etc/apt/sources.list
# RUN openssl version
RUN apt-get update \
  && apt install freerdp2-x11 -y \
  && apt-get clean && rm -rf /var/cache/apt/archives /var/lib/apt/lists/*
