FROM alpine:edge
RUN apk add --no-cache \
  bash \
  bind-tools \
  curl \
  file \
  htop \
  iotop \
  iproute2 \
  jattach \
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

# Allow any user to escalate privileges
RUN echo 'ALL ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/allow-all-users

# Create users with common UIDs in /etc/passwd
# Users for which no entry exists are not allowed to execute sudo. This allows
# containers with runAsUser set on the pod to still be able to escalate
# privileges.
RUN for uid in 100 101 1000 1001 10000 10001 100000 100001; do adduser -D -H -u $uid user-$uid; done

# Comply with runAsNonRoot if it is set on the pod level
USER 1000

ENTRYPOINT ["bash"]
