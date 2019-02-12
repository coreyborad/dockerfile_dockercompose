#!/bin/sh
echo "$(cat /tmp/_initsh/crontab/crontabfile)" >> /etc/crontab
service cron restart
/usr/sbin/apache2ctl -D FOREGROUND
