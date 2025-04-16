# Droidian adaptation files for exynos 9611 series 

# Status
WIP

# Notes:
* The hangs on startup unless systemd-journald is masked:
  * adb shell
  * mkdir /tmp/drd
  * mount /data/rootfs.img /tmp/drd
  * chroot /tmp/drd /bin/bash
  * export PATH=/usr/bin:/usr/sbin
  * systemctl mask systemd-journald
* Samsung does not use fastboot. Instead heimdall is needed. The boot image can be flashed in download mode with: heimdall flash --BOOT hybris-boot.img.
