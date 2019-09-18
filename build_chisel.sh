#!/bin/bash

CUR_DIR=$(dirname $(readlink -f $0))

cd $CUR_DIR/MeowRouter
sbt 'runMain Main --target-dir build --top-name Top --no-dce'
cd ..
mv MeowRouter/build/Top.v ./thinpad_top.srcs/sources_1/new/Router.v
