#!/bin/bash

LOGFILE=/var/tmp/poodle.out

find /apps -wholename \*jboss\*/server.xml >> /tmp/find.out

for I in `cat /tmp/find.out`; do
  perl -i.orig -pe 's/sslProtocol \= \"TLS\"/sslProtocols \= \"TLSv1,TLSv1\.1,TLSv1\.2\"/' $I
  echo "Edited $I" >> $LOGFILE
done


for X in `chkconfig --list | grep jboss | grep -v jbossas | awk '{print $1}' `; do
  service $X restart
done

rm -f /tmp/find.out
