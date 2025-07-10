#!/bin/sh

sed -i -e 's|^URL="https://www.lwfinger.com|URL="http://127.0.0.1|g' ./chroot/var/lib/dpkg/info/firmware-b43-installer.postinst
