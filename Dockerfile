FROM alpine:edge

RUN apk add --update --no-cache \
    texlive \
    texmf-dist-pictures \
    texmf-dist-science \
    texmf-dist-bibtexextra \
    texmf-dist-pstricks \
    texmf-dist-latexextra \
    poppler-utils \
    curl \
    tar \
    inkscape \
    bash \
    make \
    ca-certificates

RUN curl -Lsf 'https://github.com/jgm/pandoc/releases/download/2.1.3/pandoc-2.1.3-linux.tar.gz' | tar -xvz --strip-components 1 -C /usr/local

RUN apk del --no-cache curl tar
