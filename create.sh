#!/bin/bash

set -e

file="${1:-english}"
latex $file.tex
dvipdf $file.dvi
cp $file.pdf CV_LeonardoSandovalGonzalez.pdf
