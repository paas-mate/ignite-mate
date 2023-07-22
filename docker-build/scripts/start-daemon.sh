#!/bin/bash

DIR="$( cd "$( dirname "$0"  )" && pwd  )"
mkdir -p $IGNITE_HOME/logs
$IGNITE_HOME/bin/ignite.sh examples/config/example-ignite.xml
