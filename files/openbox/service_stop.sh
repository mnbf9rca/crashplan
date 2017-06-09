#!/bin/bash

if [ -f "/opt/stopapp.sh" ]; then
  /opt/stopapp.sh
fi

PID=$(ps aux | grep -i [/]usr/bin/openbox | awk {'print $2'})
if [ -n "$PID" ]; then
  kill -9 $PID
fi

