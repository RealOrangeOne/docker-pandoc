# Docker Pandoc

![CI](https://github.com/RealOrangeOne/docker-pandoc/workflows/CI/badge.svg)

Docker file to build files using pandoc.

The container is based off Alpine, with `texlive`, `librsvg` and `pandoc` installed.

## Texlive packages
- pictures
- science
- bibtexextra
- pstricks
- latexextra

## Additional system tools
- bash (because apparently it's not installed by default)
- inkscape
- git
