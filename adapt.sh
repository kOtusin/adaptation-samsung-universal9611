#!/bin/sh
echo "Adaptation for exynos9611 devices"
echo "Modified by kotusin"
umount /mnt/
mount /data/rootfs.img /mnt/
cd overlay
tar -czf overlay.tar *
tar -hxvf overlay.tar -C /mnt/
rm overlay.tar
chroot /mnt/ /bin/bash -c 'export PATH="$PATH:/usr/bin:/usr/sbin" && systemctl mask systemd-timesyncd && systemctl enable samsung-hwc'
umount /mnt/
echo "Done!"
echo "It is recommended to run these command once Droidian is booted;"
echo "sudo apt update && sudo apt upgrade && sudo apt dist-upgrade"
