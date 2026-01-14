#!/bin/bash
set -euo pipefail
echo "Headless Setup: Applying Server Settings..."

kwriteconfig6 --file kscreenlockerrc --group Daemon --key Autolock false
kwriteconfig6 --file powermanagementprofilesrc --group AC --group SuspendSession --key suspendThenHibernate false
kwriteconfig6 --file powermanagementprofilesrc --group AC --group SuspendSession --key idleTime 0
kwriteconfig6 --file powermanagementprofilesrc --group AC --group DPMSControl --key idleTime 0

qdbus-qt6 org.kde.KWin /KWin reconfigure || true
