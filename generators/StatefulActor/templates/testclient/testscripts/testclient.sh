#!/bin/bash
set -ex
BASEDIR=$(dirname $0)
cd $BASEDIR
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/out/lib/lib:<%= fabricCodePath %>
java -Djava.library.path=$LD_LIBRARY_PATH -jar out/lib/<%= testJar %>.jar
