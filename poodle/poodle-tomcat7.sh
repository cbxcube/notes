#!/bin/bash

LOGFILE=/var/tmp/poodle.out

find /apps -wholename \*conf/server.xml | grep tomcat >> /tmp/find.out
[[ -d /opt/tomcat7 ]] && find /opt/tomcat7 -wholename \*conf/server.xml | grep tomcat >> /tmp/find.out

for I in `cat /tmp/find.out`; do
  perl -00 -ne 'print if m/(\<Connector.*\n\s+.*secure\=\"true)/' $I | egrep -q 'sslEnabledProtocols'
  if [[ $? != 0 ]]; then
    perl -0777 -i.orig -pe 's/(\<Connector.*\n\s+.*secure\=\"true\")/$1 sslEnabledProtocols \= "TLSv1,TLSv1\.1,TLSv1\.2\"/' $I
    echo "Edited $I" >> $LOGFILE
  fi
done

if [[ -f /etc/init.d/tomcat ]]; then
  service tomcat restart
elif [[ -f /etc/init.d/tomcat7 ]]; then
  service tomcat7 restart
else
  TOMCATBINDIR=`ps -ef | grep tomcat | grep -v grep | perl -pe 's/.*(\/apps\/.*\/bin).*/$1/'`
  $TOMCATBINDIR/shutdown.sh
  $TOMCATBINDIR/startup.sh
fi


rm -f /tmp/find.out
