#!/bin/sh
### BEGIN INIT INFO
# Provides:          hp-wifi-enable
# Required-Start:    networking
# Required-Stop:     networking
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Enables wifi
# Description:       Enabled wifi
### END INIT INFO

ifconfig eno1 up
service network-manager restart
