#!/bin/bash

# change directory to script dir
cd `dirname $0`

# get working directory
WORKDIR=`pwd -P`

pushd html
gtags -v --gtagsconf ${WORKDIR}/gtags.conf
htags -aosnFf --html-header=${WORKDIR}/encode_meta.html
popd
