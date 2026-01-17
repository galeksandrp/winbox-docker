#!/bin/bash
set -e

WINBOX_URL="$(curl -s -L https://download.mikrotik.com/routeros/winbox/3.43/winbox64.exe -o /dev/null -w '%{url_effective}')"
if [[ "${WINBOX_URL}" =~ /([0-9.]+)/ ]]; then
    echo "${BASH_REMATCH[1]}.0"
else
    exit 1
fi
