user=root
targetip=209.73.140.8

/usr/bin/rsync -avz /etc/named* $user@$targetip:/etc
/usr/bin/rsync -avz /etc/smbind $user@$targetip:/etc
/usr/bin/rsync -avz /var/named $user@$targetip:/var

/usr/bin/ssh $user@$targetip "/sbin/service named restart"
