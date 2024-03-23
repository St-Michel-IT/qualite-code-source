#!/usr/bin/bash
# Check lualatex is installed
if ! [ -x "$(command -v lualatex)" ]; then
  echo 'Error: lualatex is not installed.' >&2
  exit 1
fi
# Compile LaTeX with lualatex
cd doc && lualatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=build/pdf Qualité-Code-Source-L3-CSI.tex