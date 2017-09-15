#!/usr/bin/env bash

set -e

(
    git clone --recursive https://github.com/BlackIkeEagle/vimfiles.git
    cd vimfiles
    git checkout light
)

HOME=$(pwd)/home/vimdeck vimfiles/install -c

find home -name "*.git*" -delete || true

rm -rf vimfiles
