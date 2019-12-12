#!/bin/bash

CUR_DIR=$(dirname $(readlink -f $0))

cd $CUR_DIR/MeowRouter
sbt 'runMain Main --target-dir build --top-name Router'
cd $CUR_DIR
mv MeowRouter/build/Router.v ./thinpad_top.srcs/sources_1/new/Router.v
