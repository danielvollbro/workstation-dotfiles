#!/bin/bash
set -euo pipefail
echo "Common Setup: Applying shared settings..."

kwriteconfig6 --file kdeglobals --group KDE --key SingleClick false
