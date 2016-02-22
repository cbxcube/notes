#!/bin/bash

LOGFILE=/var/tmp/poodle.out

find /apps -name ssl.conf >> /tmp/find.out
find /etc/httpd -name ssl.conf >> /tmp/find.out

for I in `cat /tmp/find.out`; do
  grep -q "-SSLv3" $I
  if [[ $? != 0 ]]; then
    perl -i.orig -pe 's/^SSLProtocol.*$/SSLProtocol all -SSLv3 -SSLv2/' $I
    echo "Edited $I" >> $LOGFILE
  fi
done

if [[ -f /etc/init.d/httpd ]]; then
  service httpd restart
else
  APACHEBINDIR=`ps -ef | grep httpd | grep -v grep | perl -pe 's/.*(\/apps\/.*\/bin).*/$1/'`
  $APACHEBINDIR/apachectl stop
  $APACHEBINDIR/apachectl start
fi

rm -f /tmp/find.out
