#!/bin/bash

VERSION=8.21
BASEDIR=$PWD
PCRE=pcre-"$VERSION"

##curl -L -O http://downloads.sourceforge.net/project/pcre/pcre/"$VERSION"/pcre-"$VERSION".tar.bz2
##tar xvfj pcre-"$VERSION".tar.bz2
##cd pcre-"$VERSION"

if [ -d "$PCRE" ]; then
	cd "$PCRE"
	svn update
else
	svn co svn://vcs.exim.org/pcre/code/tags/"$PCRE"
	cd "$PCRE"
fi

if [ -d "$BASEDIR"/pcre ]; then
	rm -rf "$BASEDIR"/pcre
fi
mkdir -p "$BASEDIR"/pcre

./autogen.sh
./configure --disable-cpp --prefix=$BASEDIR/pcre
make
make install

# write short example...
# http://www.pcre.org/pcre.txt


