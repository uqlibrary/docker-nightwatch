#!/bin/bash

if [ -f /opt/nightwatch-tests.sh ]; then
    chmod +x /opt/nightwatch-tests.sh
    . /opt/nightwatch-tests.sh
fi

exit
