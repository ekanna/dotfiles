#!/bin/bash

BASEURL="http://apache.mirror.vu.lt/apache/apr/"

APRVER="1.4.5"
APRURL=`echo "$BASEURL"apr-"$APRVER".tar.bz2`

APRUTILVER="1.3.12"
APRUTILURL=`echo "$BASEURL"apr-util-"$APRUTILVER".tar.bz2`

BASEDIR=$PWD
echo "$BASEDIR"

set -e

# go somewhere safe
# cd /tmp

# get the source to base APR
##curl -L -O $APRURL

# extract it and go into the source
##tar -xjvf apr-$APRVER.tar.bz2
##cd apr-$APRVER

# configure, make, make install
##./configure --prefix=$BASEDIR/apr
##make
#sudo make install
##make install

# reset and clean up
cd ..
##rm -rf apr-$APRVER apr-$APRVER.tar.bz2

curl -L -O $APRUTILURL

# extract
tar -xjvf apr-util-$APRUTILVER.tar.bz2
cd apr-util-$APRUTILVER

# configure, make, make install
./configure --prefix=$BASEDIR/apr-utils --with-apr=$BASEDIR/apr
make
#sudo make install
make install

cd ..
rm -rf apr-util-$APRUTILVER*

