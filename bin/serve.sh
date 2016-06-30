#!/bin/bash

./bin/generate.sh;


PYTHON3=`which python3`;
PYTHON2=`which python`;

if [ "$PYTHON3" != "" ]; then
	$PYTHON3 -m http.server 1337;
elif [ "$PYTHON2" != "" ]; then
	$PYTHON2 -m SimpleHTTPServer 1337;
fi;

