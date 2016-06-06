FROM frolvlad/alpine-glibc:alpine-3.4

RUN apk add --no-cache --virtual=build-dependencies wget ca-certificates tar xz && \
    wget "https://www.archlinux.org/packages/extra/x86_64/mono/download/" -O "/tmp/mono.pkg.tar.xz" && \
    tar -xJf "/tmp/mono.pkg.tar.xz" && \
    mozroots --import --ask-remove && \
    apk del build-dependencies && \
    rm /tmp/*
