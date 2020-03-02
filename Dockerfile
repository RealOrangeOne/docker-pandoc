FROM alpine:edge

RUN apk add --update --no-cache \
    texlive \
    texmf-dist-pictures \
    texmf-dist-science \
    texmf-dist-bibtexextra \
    texmf-dist-pstricks \
    texmf-dist-latexextra \
    poppler-utils \
    inkscape \
    bash \
    make \
    ca-certificates \
    librsvg \
    git \
    openssh \
    biber \
    ghostscript

RUN apk add --update --no-cache tar curl && \
    curl -Lsf 'https://github.com/jgm/pandoc/releases/download/2.2.1/pandoc-2.2.1-linux.tar.gz' | tar -xvz --strip-components 1 -C /usr/local && \
    apk del --no-cache curl tar

RUN ln -s /usr/share/texmf-dist/fonts/ /usr/share/fonts && fc-cache -fv
