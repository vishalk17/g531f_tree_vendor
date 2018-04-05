#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/soc.2/by-name/RECOVERY:8591360:56065b72096e8e5ae5eb0834c605e8341a8015ea; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/soc.2/by-name/KERNEL:7630848:2395d1924ecc133f11b5053aefdb6edead710a16 EMMC:/dev/block/platform/soc.2/by-name/RECOVERY 56065b72096e8e5ae5eb0834c605e8341a8015ea 8591360 2395d1924ecc133f11b5053aefdb6edead710a16:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
