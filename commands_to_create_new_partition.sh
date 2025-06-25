lsblk
#create new PV in sdb
pvcreate /dev/sdb

#Create new VG in sdb
vgcreate vg01 /dev/sdb
vgs

# create new LV with 100 % free space in VG01
lvcreate -l +100%FREE -n lv01 vg01
df -Th

#creating(ext4) file system
mkfs.ext4 /dev/mapper/vg01-lv01
df -Th

#creating directory to mount LV
mkdir /data

#mounting LV01 to /data directory
mount /dev/mapper/vg01-lv01 /data/
df -Th

#searching entries done for VG01 in mtab
egrep "vg01" /etc/mtab

#copping entries to fstab from mtab
egrep "vg01" /etc/mtab >> /etc/fstab
cat /etc/fstab