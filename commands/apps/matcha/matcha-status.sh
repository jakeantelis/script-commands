#!/bin/bash

# Note: Matcha required
# Install: https://github.com/jakeantelis/Matcha#install

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Status
# @raycast.mode compact

# Optional parameters:
# @raycast.icon ./images/matcha.png
# @raycast.packageName Matcha

# Documentation:
# @raycast.author Jake Antelis
# @raycast.authorURL https://github.com/jakeantelis
# @raycast.description Show whether Matcha is keeping your Mac awake.

CLI="/Applications/Matcha.app/Contents/Resources/matchactl"
[ -x "$CLI" ] || CLI="matchactl"
"$CLI" status
