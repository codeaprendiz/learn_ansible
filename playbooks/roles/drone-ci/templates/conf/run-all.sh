#!/usr/bin/env sh
PRG="$0"
# need this for relative symlinks
while [ -h "$PRG" ] ; do
   PRG=`readlink "$PRG"`
done
scriptdir=`dirname "$PRG"`

echo "-------------------------------"
echo "          pre-query            "
echo "-------------------------------"
$scriptdir/pre-query.sh
echo "-------------------------------"
echo "          run-query            "
echo "-------------------------------"
$scriptdir/run-query.sh
echo "-------------------------------"
echo "          post-query           "
echo "-------------------------------"
$scriptdir/post-query.sh

