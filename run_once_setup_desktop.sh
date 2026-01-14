#!/bin/bash
set -euo pipefail
echo "Desktop Setup: Applying Workstation Settings..."

kwriteconfig6 --file kscreenlockerrc --group Daemon --key Autolock true

qdbus-qt6 org.kde.KWin /KWin reconfigure || true
