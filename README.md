# Docker Pandoc

[![CircleCI](https://circleci.com/gh/RealOrangeOne/docker-pandoc.svg?style=svg)](https://circleci.com/gh/RealOrangeOne/docker-pandoc)

Docker file to build files using pandoc.

The container is based off Alpine, with `texlive` and `pandoc` installed.

## Texlive packages
- pictures
- science
- bibtexextra
- pstricks
- latexextra

## Additional system tools
- bash (because apparently it's not installed by default)
- inkscape
