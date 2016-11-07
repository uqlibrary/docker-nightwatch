#!/bin/bash

if [ -z "$FILELOCATION" ]; then export FILELOCATION="/opt/nightwatch"; fi
if [ -z "$TESTSFILE" ]; then export TESTSFILE="nightwatch-tests.sh"; fi

if [ -f $FILELOCATION/$TESTSFILE ]; then
    chmod +x $FILELOCATION/$TESTSFILE
    . $FILELOCATION/$TESTSFILE
fi
