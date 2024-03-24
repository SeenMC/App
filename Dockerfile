FROM ubuntu:focal
RUN apt-get update && \
  apt-get -y install curl gnupg && \
  curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null && \
  echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | tee /etc/apt/sources.list.d/playit-cloud.list && \
  apt-get update && \
  apt-get -y install nano playit screen shellinabox unzip wget && \
  echo 'root:root' | chpasswd
