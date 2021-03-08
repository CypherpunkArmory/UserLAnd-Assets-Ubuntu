#! /bin/bash

if [[ -z "${HOSTS}" ]]; then
  HOSTS="127.0.0.1 localhost\n127.0.0.1 android-device"
fi

if [[ -z "${HOSTNAME}" ]]; then
  HOSTNAME="android-device"
fi

if [[ -z "${RESOLV}" ]]; then
  RESOLV="nameserver 8.8.8.8\nnameserver 8.8.4.4"
fi

if [[ -z "${INITIAL_USERNAME}" ]]; then
  INITIAL_USERNAME="user"
fi

echo -e "${HOSTS}" > /etc/hosts
echo -e "${HOSTNAME}" > /etc/hostname
echo -e "${RESOLV}" > /etc/resolv.conf
su $INITIAL_USERNAME -c /support/startVNCServerStep2.sh
