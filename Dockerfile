FROM alekzonder/archlinux-yaourt

RUN sudo -u yaourt yaourt -Syyau --noconfirm

RUN sudo -u yaourt yaourt -S --noconfirm \
    pandoc-bin \
    texlive-most \
    pandoc-citeproc-bin \
    pandoc-crossref-bin

RUN yaourt -Scc --noconfirm

RUN rm -rf /var/cache/pacman/pkg/*

