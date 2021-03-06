#!/bin/bash


if test \( "$#" != "1" \) ;
then 
    echo "usage: $0 COMPILER" ;
    exit 1
fi

compiler="s@XXX@$1@g"


cat "$PWD/DGtal_debug_all.liris.ubuntu.XXX.64.cmake" | sed -e "${compiler}" > "$PWD/DGtal_debug_all.liris.ubuntu.$1.64.cmake"
cat "$PWD/DGtal_debug.liris.ubuntu.XXX.64.cmake" | sed -e "${compiler}" > "$PWD/DGtal_debug.liris.ubuntu.$1.64.cmake"
cat "$PWD/DGtal_release_all.liris.ubuntu.XXX.64.cmake" | sed -e "${compiler}" > "$PWD/DGtal_release_all.liris.ubuntu.$1.64.cmake"
cat "$PWD/DGtal_release.liris.ubuntu.XXX.64.cmake" | sed -e "${compiler}" > "$PWD/DGtal_release.liris.ubuntu.$1.64.cmake"

