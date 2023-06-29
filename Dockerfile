FROM alpine:edge
RUN apk add --no-cache \
  bash \
  bind-tools \
  curl \
  file \
  htop \
  iotop \
  iproute2 \
  jq \
  nload \
  procps \
  ranger \
  ripgrep \
  strace \
  sudo \
  sysstat \
  tcpdump \
  tmux \
  vim

RUN echo 'ALL ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/allow-all-users

ENTRYPOINT ["bash"]
