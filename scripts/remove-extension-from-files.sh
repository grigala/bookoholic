#!/usr/bin/env sh

for file in *.pdf; do mv "$file" "${file%.pdf}"; done