PARTITION_UUID=`blkid -o value -s UUID ${LOOPBACK_PARTITION}`

echo -e "# /etc/fstab: static file system information." > mnt/etc/fstab
echo -e "proc\\t/proc\\tproc\\tnodev,noexec,nosuid\\t0\\t0" >> mnt/etc/fstab
echo -e "/dev/sda1\\t/\\text4\\terrors=remount-ro\\t0\\t1" >> mnt/etc/fstab
echo -e "" >> mnt/etc/fstab

more mnt/etc/fstab
