#!/bin/bash

LOGFILE=/var/tmp/poodle.out

find /etc/jbossas/standalone -name \*.xml >> /tmp/find.out

for I in `cat /tmp/find.out`; do
grep -q "TLSv1.2" $I
  if [[ $? != 0 ]]; then
    perl -i.orig -pe 's/truststore\"/truststore\" protocol\=\"TLSv1,TLSv1\.1,TLSv1\.2\"/' $I
    echo "Edited $I" >> $LOGFILE
  fi
done


for X in `chkconfig --list | grep jboss | grep -v jbossas | awk '{print $1}' `; do
  service $X restart
done

rm -rf /tmp/find.out
