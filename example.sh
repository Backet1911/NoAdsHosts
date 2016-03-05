Script for *WRT and some linux\unix systems:
Осторожно, если вы используете hosts файл для назначения имени машинам, то вам следует настроить копирование ваших записей в примечании!
Attention, if you use the hosts file for the name of the destination machine, then you should set up your accounts in note!
------------------------------------------

#!/bin/sh
cp /etc/hosts /etc/hosts.backup
wget -o "" /tmp/hosts.raw
rm /etc/hosts
cat /tmp/hosts.raw >>/etc/hosts
#раскомментируйте эту строку, если вы используете hosts файл.
#sed -n '/First line/,/Last line/p' /etc/hosts.backup >>/etc/hosts
#uncomment out this line, if you use the hosts file.
rm /tmp/hosts.raw

END FILE.sh

nano /etc/crontab
  * * */3 * * root bash /path to file.sh
  #updated every 3 days
  
  Enjoy!
