#!/usr/bin/env bash

cd /Users/buddybuild/workspace

if [ -z ${PLATFORM+x} ]; then
echo '=== Could not detect environmental variable PLATFORM. ionic build both ios and android.'
ionic build android ios
else
echo '=== Detected environmental variable PLATFORM is set:' $PLATFORM
ionic build $PLATFORM
fi