#!/bin/bash
# Compiles every report with latexmk and checks a PDF comes out.
#
# latexmk returns non-zero when a figure is missing even though it still produces
# the document, so what is asserted here is the PDF, not the exit code. The
# missing figures are listed in the README.
set -u

root="$(cd "$(dirname "$0")/.." && pwd)"
failed=0

build() {
  local dir="$1" tex="$2" pdf="${2%.tex}.pdf"
  echo "--- $dir/$tex"
  (cd "$root/$dir" && latexmk -pdf -interaction=nonstopmode -shell-escape "$tex" > /tmp/latexmk.log 2>&1)
  if [ -s "$root/$dir/$pdf" ]; then
    echo "ok    $dir/$pdf  $(( $(stat -c%s "$root/$dir/$pdf") / 1024 )) KB"
  else
    echo "FAIL  $dir/$tex produced no PDF"
    grep -E '^! ' /tmp/latexmk.log | head -5
    failed=1
  fi
}

build docs/practice-1               Practica1.tex
build docs/practice-1-format-b      p.tex
build docs/practice-1-format-c      main.tex
build docs/practice-2-part-1        main.tex
build docs/practice-2-part-2        main.tex
build docs/practice-3-part-1        main.tex
build docs/practice-3-part-2        main.tex

if [ "$failed" -ne 0 ]; then
  echo "some reports did not build"
  exit 1
fi
echo "every report builds"
