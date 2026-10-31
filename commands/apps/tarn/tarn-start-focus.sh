#!/bin/bash

# Note: Tarn required
# Install: https://github.com/jakeantelis/Tarn#install

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Start Focus
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ./images/tarn.png
# @raycast.packageName Tarn
# @raycast.argument1 { "type": "text", "placeholder": "Minutes (optional)", "optional": true }
CLI="/Applications/Tarn.app/Contents/Resources/tarnctl"
[ -x "$CLI" ] || CLI="$(command -v tarnctl)"
if [ -z "$CLI" ]; then
  echo "Tarn is not installed"
  exit 1
fi

if [ -n "$1" ]; then
  "$CLI" start "$1"
else
  "$CLI" start
fi
