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
  ranger \
  ripgrep \
  strace \
  sysstat \
  tcpdump \
  tmux \
  vim

ENTRYPOINT ["bash"]
