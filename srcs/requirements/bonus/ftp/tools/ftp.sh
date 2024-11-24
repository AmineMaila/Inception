#!/bin/bash

adduser --disabled-password --gecos "" $FTP_USER
echo "$FTP_USER:$FTP_PASSWORD" | chpasswd

usermod -aG www-data $FTP_USER

echo >> /etc/vsftpd.conf "
local_enable=YES
chroot_local_user=YES
local_root=/wp
write_enable=YES
allow_writeable_chroot=YES
"

vsftpd