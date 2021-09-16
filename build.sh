#!/usr/bin/env bash
# Reproducible build with the TeX Live version of the original submission (2021).
# Requires podman (or docker: export ENGINE=docker).
#   ./build.sh          → build/article.vinci-procedural-textures.pdf          (as submitted, v1.0)
#   ./build.sh author   → build/article.vinci-procedural-textures-author.pdf   (acmart "authorversion" notice, for Zenodo)
set -euo pipefail
cd "$(dirname "$0")"
ENGINE=${ENGINE:-podman}
IMAGE=docker.io/texlive/texlive:TL2021-historic
MAIN=article.vinci-procedural-textures
args=(-pdf -interaction=nonstopmode -outdir=/out)
if [[ ${1:-} == author ]]; then
  args+=(-jobname="$MAIN-author" -usepretex='\PassOptionsToClass{authorversion}{acmart}')
fi
mkdir -p build
"$ENGINE" run --rm -v "$PWD/src:/src:ro,Z" -v "$PWD/build:/out:Z" -w /src "$IMAGE" \
  latexmk "${args[@]}" "$MAIN.tex"
