#!/bin/bash

OUTPUT_DIR="/tmp"
OUTPUT_FILE=$OUTPUT_DIR"/output.txt"

chmod u+x ./check_sentry.py
python ./check_sentry.py &> $OUTPUT_FILE
OUTPUT=$(grep "ERROR:" $OUTPUT_FILE)

if [ $? == 0 ]; then
  echo "ERROR: Sending test exception to Sentry failed!"
  exit 2
fi

echo "OK: Test exception has been successfully sent"
exit 0
