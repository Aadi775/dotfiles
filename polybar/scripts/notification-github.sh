#!/bin/sh

USER="thanhvule0310"
TOKEN="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"

notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

if [ "$notifications" -gt 0 ]; then
    echo "$notifications"
else
    echo "0"
fi
