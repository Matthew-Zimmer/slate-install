#!/bin/bash

if [[ $# > 0 ]]
then
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
    cd $(git clone $repo |& cut -d "'" -f 2)
    mkdir bin
    cd bin
    cmake ..
    cmake --build . --target install
    cd ../..
done