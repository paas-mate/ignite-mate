#!/bin/bash

mkdir -p $IGNITE_HOME/logs
if [ -d "/opt/ignite/libs/optional/ignite-rest-http/" ]; then
  mv /opt/ignite/libs/optional/ignite-rest-http/ /opt/ignite/libs/
fi
$IGNITE_HOME/bin/ignite.sh examples/config/example-ignite.xml
tail -f /dev/null
