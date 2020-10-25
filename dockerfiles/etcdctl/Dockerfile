FROM alpine:latest

ENV ETCDCTL_API=3

# Find the latest version on https://github.com/etcd-io/etcd/releases
ARG ETCD_VER=v3.4.13

# Can be either: amd64, arm64, ppc64le
ARG ARCH=amd64

RUN wget https://github.com/etcd-io/etcd/releases/download/${ETCD_VER}/etcd-${ETCD_VER}-linux-arm64.tar.gz \
 && tar xzvf etcd-${ETCD_VER}-linux-${ARCH}.tar.gz --strip-components=1 \
 && rm -f etcd-${ETCD_VER}-linux-${ARCH}.tar.gz \
 && mv etcd* /usr/local/bin/

CMD ["etcdctl"]
