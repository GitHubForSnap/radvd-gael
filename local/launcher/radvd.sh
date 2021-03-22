#!/bin/bash

if [[ ! -f "$SNAP_DATA/radvd.conf" ]]; then

  echo "Please configure radvd in $SNAP_DATA/radvd.conf";
  echo "Then restart radvd-gael with 'sudo systemctl restart snap.radvd-gael.radvd.service'";

  exit 0;    # When using forking services systemd expects us to exit with 0, otherwise it will wait until the timeout is reached
fi

if [[ `cat /proc/sys/net/ipv6/conf/all/forwarding` -eq 0 ]]; then

  echo "Enabling forwarding on all ipv6 interfaces";

  echo 1 > /proc/sys/net/ipv6/conf/all/forwarding;
fi

$SNAP/usr/local/sbin/radvd --config $SNAP_DATA/radvd.conf --pidfile=$SNAP_DATA/radvd.pid -logmethod=stderr_syslog

exit 0;
