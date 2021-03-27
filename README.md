# BackUP

Use this script with bimkos/backupRotator.

# Install

```
mkdir /root/backupScript /backup
cd /root/backupScript
wget https://raw.githubusercontent.com/bimkos/BackUP/master/backup.sh
```

Change the backup settings in the file if you need it.

# Add to crontab

To generate crontab time use https://crontab.guru/

```
crontab -e
```

Add:

```
15 14 1 * * bash /root/backupScript/backup.sh
```

# Integration with bimkos/backupRotator

...
