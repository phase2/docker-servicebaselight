FROM alpine:3.7

RUN apk --update add bash curl ca-certificates && \
    curl -Ls https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub > /etc/apk/keys/sgerrand.rsa.pub && \
    curl -Ls https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.25-r0/glibc-2.25-r0.apk > /tmp/glibc-2.25-r0.apk && \
    apk add --allow-untrusted /tmp/glibc-2.25-r0.apk && \
    rm -rf /tmp/glibc-2.25-r0.apk /var/cache/apk/*

# Add the s6 overlay.
ENV S6_VERSION v1.19.1.1
RUN curl -L "https://github.com/just-containers/s6-overlay/releases/download/$S6_VERSION/s6-overlay-amd64.tar.gz" | \
    tar xzvf - -C /
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS 1

# Run the s6-based init.
ENTRYPOINT ["/init"]

# Set up a standard volume for logs.
VOLUME ["/var/log/services"]

# Add in standard scripts.
ADD root /
