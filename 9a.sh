#!/bin/sh
for x in $*
do
echo "cat>$x<<HERE
ABC
DEF
GHI
HERE"
done>recreate.sh
