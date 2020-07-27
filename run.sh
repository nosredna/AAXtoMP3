#! /urs/bin/env bash

set -x

CONV=/build/AAXtoMP3
FILES=$(ls | egrep "*.aax")

for f in $FILES; do
    $CONV -n -t /output $f
done
