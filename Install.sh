#!/bin/sh
apt-get install -y xz-utils openssl gawk file wget
echo "---------------------------"
echo -n "ip address:"
read IP
echo "---------------------------"
echo -n "ipmask (Google Cloud Platform is 255.255.255.0):"
read IPMASK
echo "---------------------------"
echo -n "ipgate:"
read IPGATE
echo "---------------------------"
echo "Start Install Windows 10"
wget --no-check-certificate -qO InstallNET.sh 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh' && bash InstallNET.sh --ip-addr $IP --ip-mask $IPMASK --ip-gate $IPGATE -dd 'https://image.moeclub.org/GoogleDrive/1OVA3t-ZI2arkM4E4gKvofcBN9aoVdneh'