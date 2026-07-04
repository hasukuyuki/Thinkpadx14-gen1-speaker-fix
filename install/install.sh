#!/bin/bash
set -e
cd "$(dirname "$0")"
install -m 755 x14-speaker-unmute.sh /usr/local/sbin/x14-speaker-unmute.sh
install -m 644 x14-speaker-unmute.service /etc/systemd/system/x14-speaker-unmute.service
systemctl daemon-reload
systemctl enable x14-speaker-unmute.service
systemctl start x14-speaker-unmute.service
systemctl status x14-speaker-unmute.service --no-pager -l | head -8
journalctl -t x14-speaker-unmute -b --no-pager | tail -3
echo "安装完成"
