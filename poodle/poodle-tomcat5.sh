#!/bin/bash

find /apps -wholename \*conf/server.xml | grep tomcat >> /tmp/find.out

for I in `cat /tmp/find.out`; do
  perl -00 -ne 'print if m/(\<Connector.*\n\s+.*secure\=\"true)/' $I | egrep -q 'sslProtocols'
  if [[ $? != 0 ]]; then
    perl -0777 -i.orig -pe 's/(\<Connector.*\n\s+.*secure\=\"true\")/$1 sslProtocols \= "TLSv1,TLSv1\.1,TLSv1\.2\"/' $I
  fi
done

TOMCATBINDIR=`ps -ef | grep tomcat | grep -v grep | perl -pe 's/.*(\/apps\/.*\/bin).*/$1/'`

$TOMCATBINDIR/shutdown.sh && $TOMCATBINDIR/startup.sh

rm -f /tmp/find.out
