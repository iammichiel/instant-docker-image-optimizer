FROM alpine:latest

RUN apk add --update \
    curl \
    build-base \
    ca-certificates \
    libjpeg-turbo-dev \
    && \

    curl -O -L -s https://github.com/tjko/jpegoptim/archive/RELEASE.1.4.4.tar.gz && \
    tar xfv RELEASE.1.4.4.tar.gz && \
    cd jpegoptim-RELEASE.1.4.4 && \
    ./configure && \
    make && \
    make strip && \
    make install && \

    cd / && \
    rm -rf /jpegoptim-RELEASE.1.4.4 && \
    rm -rf RELEASE.1.4.4.tar.gz && \
    apk del build-base ca-certificates curl

ENTRYPOINT ["/usr/local/bin/imageoptim"]
