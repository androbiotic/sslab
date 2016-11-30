#!/bin/sh
f1=`ls -l $1|cut -c 2-10`
f2=`ls -l $2|cut -c 2-10`
if [ $f1 = $f2 ]
then
  echo "Permission for Both file is Identical."
  echo "Permission:$f1"
else
  echo "Permission for Both Files are not Identical."
  echo "File $1 Permission is: $f1"
  echo "File $2 Permission is: $f2"
fi
