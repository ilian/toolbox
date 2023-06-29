FROM alpine:edge
RUN apk add --no-cache \
  bash \
  bind-tools \
  busybox-suid \
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
  sysstat \
  tcpdump \
  tmux \
  vim

ENTRYPOINT ["bash"]
