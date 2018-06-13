#!/bin/sh
set -e
exec "$@"
mkdir /tmp/mosquitto
chown -R mosquitto:mosquitto /tmp/mosquitto
chmod -R 777 /tmp
/usr/sbin/mosquitto -c /etc/mosquitto/mosquitto.conf
