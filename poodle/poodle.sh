#!/bin/bash

LOGFILE=/var/tmp/poodle.out

ps -ef | grep httpd | grep -v grep
if [[ $? = 0 ]]; then
  /usr/local/bin/poodle/poodle-apache.sh
  echo "Ran poodle-apache.sh" >> $LOGFILE
fi

ps -ef | grep tomcat | grep -v jboss | grep -v grep
if [[ $? = 0 ]]; then
  /usr/local/bin/poodle/poodle-tomcat7.sh
  echo "Ran poodle-tomcat7.sh" >> $LOGFILE
fi

rpm -qa > /tmp/rpms.out

grep -q jbossas-core /tmp/rpms.out
if [[ $? = 0 ]]; then
  /usr/local/bin/poodle/poodle-jboss6.sh
  echo "Ran poodle-jboss6.sh" >> $LOGFILE
fi

grep -q jbossas-5 /tmp/rpms.out
if [[ $? = 0 ]]; then
  /usr/local/bin/poodle/poodle-jboss5.sh
  echo "Ran poodle-jboss5.sh" >> $LOGFILE
fi

rm -f /tmp/rpms.out
