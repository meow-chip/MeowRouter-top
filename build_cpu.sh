#!/bin/bash

CUR_DIR=$(dirname $(readlink -f $0))

cd $CUR_DIR/MeowV64
sbt 'runMain Main --target-dir build --top-name Core'
cd $CUR_DIR
mv MeowV64/build/Core.v ./thinpad_top.srcs/sources_1/new/Core.v
