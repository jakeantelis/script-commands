#!/bin/bash

# Note: Matcha required
# Install: https://github.com/jakeantelis/Matcha#install

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Allow Sleep
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ./images/matcha.png
# @raycast.packageName Matcha

# Documentation:
# @raycast.author Jake Antelis
# @raycast.authorURL https://github.com/jakeantelis
# @raycast.description Stop Matcha and let your Mac sleep again.

CLI="/Applications/Matcha.app/Contents/Resources/matchactl"
[ -x "$CLI" ] || CLI="matchactl"
"$CLI" off
