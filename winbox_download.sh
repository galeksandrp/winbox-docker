#!/bin/bash
set -e

WINBOX_URL="$(curl -s -L https://download.mikrotik.com/routeros/winbox/3.43/winbox64.exe -o /dev/null -w '%{url_effective}')"
mkdir -p /opt/winbox
wget "${WINBOX_URL}" -O /opt/winbox/winbox64.exe
