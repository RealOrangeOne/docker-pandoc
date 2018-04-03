FROM alekzonder/archlinux-yaourt

RUN sudo -u yaourt yaourt -Syyau --noconfirm

RUN sudo -u yaourt yaourt -S --noconfirm \
    pandoc-bin \
    pandoc-citeproc-bin \
    pandoc-crossref-bin \
    texlive-bin \
    texlive-core \
    texlive-pictures \
    texlive-science \
    texlive-pstricks \
    texlive-latexextra \
    texlive-bibtexextra \
    texlive-formatsextra \
    texlive-games \
    svg2pdf-git

RUN yaourt -Scc --noconfirm

RUN rm -rf /var/cache/pacman/pkg/*
