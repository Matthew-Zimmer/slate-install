#!/bin/bash

if [[ $# > 0 ]]
    cd $1
fi

REPOS="
    https://github.com/Matthew-Zimmer/concept.git
    https://github.com/Matthew-Zimmer/meta.git
    https://github.com/Matthew-Zimmer/reflection.git
    https://github.com/Matthew-Zimmer/stream.git
    https://github.com/Matthew-Zimmer/memory.git
    https://github.com/Matthew-Zimmer/harpoon.git
"

for repo in $REPOS
do
    cd $(git clone https://github.com/Matthew-Zimmer/slate_install.git |& cut -d "'" -f 2)
    mkdir bin
    cmake ..
    cmake --build .
    cmake --install .
    cd ../..
done