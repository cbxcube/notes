#!/bin/sh
#
# install-tdp.sh
#
# script to install tdp on sun oracle server
#
# jarmend: added automation of TSM server add and USR creation
#
# @(#) $Id: install-tdp.sh,v 1.11 2007/06/28 15:52:33 jcarl16 Exp $

TSM_DIR=/opt/tivoli/tsm/client/ba/bin
TDP_DIR=/opt/tivoli/tsm/client/oracle/bin64
DSM=/opt/tivoli/tsm/client/ba/bin/dsm.sys
TDP_OPT=$TDP_DIR/dsm.opt

PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/sfw/bin:$TSM_DIR:$TDP_DIR
export PATH

if [ ! -d ${TSM_DIR} ]; 
then
   echo "error with tsm install. please install tsm first"
   exit 1;
fi


#
# prompts for setting up LOCATION
#

echo
echo "install-tdp.sh / UHG tdp installer"
echo
echo "Please enter system location:"
echo "0) Plymouth "
echo "1) Eagan "
echo "2) Trumbull"
echo "3) Washington Avenue Technology Center"
echo "q) quit"
echo

read ANSWER

case "$ANSWER" in
	0) LOC=ply;;
	1) LOC=etc;;
	2) LOC=tbl;;
	3) LOC=wtc;;
	q) echo "Quitting!!";exit;;
	*) echo "Invalid selection.  Please select 0..3, or q";;
esac


ARCH_DIR=/uht_tdp
cd /
if [ ! -d ${ARCH_DIR} ]; 
then
  mkdir ${ARCH_DIR}
fi

cd ${ARCH_DIR}

echo "Creating no answers file"
cat << EOF > /tmp/noask_pkgadd
mail=
instance=overwrite
partial=nocheck
runlevel=nocheck
idepend=nocheck
rdepend=nocheck
space=nocheck
setuid=nocheck
conflict=nocheck
action=nocheck
basedir=default
EOF

echo "Downloading tdp base"
echo "This will break in dmz..."
wget http://10.115.176.59/Build/TDP/TDPoracle.64bit.tar.Z
wget http://10.115.176.59/Build/TDP/agent.lic
wget http://10.115.176.59/Build/TDP/inclexcl.tdp
wget http://10.115.176.59/Build/TDP/tdpo.opt

echo "Extracting archive"
zcat TDPoracle.64bit.tar.Z|tar xvf -

cd ${ARCH_DIR}/
pkgadd -a /tmp/noask_pkgadd -d TDPoracle64.pkg

echo "Configuring"
if [ ! -d ${TDP_DIR} ]; 
then
   echo "error with tdp install"
   exit 1;
fi

cp -fp agent.lic    $TDP_DIR
cp -fp tdpo.opt     $TDP_DIR
cp -fp inclexcl.tdp $TSM_DIR

cd /
echo "Removing ${ARCH_DIR}"
rm -fr ${ARCH_DIR}

echo "Configuring dsm.sys"

# match sub
match() {
  echo `grep -i $1 $2|sed -e 's/^ *//g'|sed -e 's/  */,/g' |awk -F, '{print $2}'|tail -1`
}

# assumption top to bottom
if [ -f $DSM ]; 
then
  SERVER=`match "TCPServeraddress" $DSM`
  PORT=`match "TCPPort" $DSM`
  ADDRESS=`match "TCPCLIENTAddress" $DSM`
  NODE=`match "NODEname" $DSM`
fi

cat << EOF > /tmp/tdp-template.txt

SErvername  tsm-ora
   COMMmethod         TCPip
   TCPServeraddress   $SERVER
   TCPPort            $PORT
   TCPCLIENTAddress   $ADDRESS
   TCPWindowsize      256
   TCPBuffsize        32
   HTTPport           1581

NODEname              $NODE-ora
PASSWORDAccess        PROMPT
INCLEXCL              /opt/tivoli/tsm/client/ba/bin/inclexcl.tdp

SCHEDLOGname          /var/tsm/logs/dsmsched.log
SCHEDLOGRetention     5
ERRORLOGname          /var/tsm/logs/dsmerror.log
ERRORLOGRetention     33
EOF

cat /tmp/tdp-template.txt >> $DSM

echo "configuring tdpo.opt"
sed -e "s/SERVER/${NODE}-ora/" $TDP_DIR/tdpo.opt > $TDP_DIR/tdpo.opt.new
mv $TDP_DIR/tdpo.opt.new $TDP_DIR/tdpo.opt

printf "SErvername\ttsm-ora\n" > $TDP_OPT

chmod 0644 $TDP_DIR/tdpo.opt
chmod 0644 $TSM_DIR/inclexcl.tdp
chmod 0444 $TDP_DIR/agent.lic
chmod -R a+rw /var/tsm

# Adding node to TSM server
/usr/bin/dsmadmc -id=utility -pa=jul20 reg node $NODE-ora $LOC$NODE-ora \
	domain=ORACLE user=none passexp=0 backdel=yes

if [ ! -f /usr/bin/dsm.sys ]; 
then
  echo "error no /usr/bin/dsm.sys please install"
  exit 1
fi

# show env
$TDP_DIR/tdpoconf SHOWENVironment

# Set the password
echo
echo
echo "The password has been set to: "$LOC$NODE"-ora."
echo "Input the password when prompted."
echo "Press [Enter] to continue."
read TEMP

# set password
$TDP_DIR/tdpoconf PASSWORD

# EOF
