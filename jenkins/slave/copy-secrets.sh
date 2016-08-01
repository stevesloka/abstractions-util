#!/bin/sh

sleep 2
mkdir -p /root/.ssh
ssh-keyscan git.tdc.upmc.edu >> /root/.ssh/known_hosts
ssh-keyscan 192.168.2.50 >> /root/.ssh/known_hosts
cp /etc/secret-volume/id-rsa /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

echo "[192.168.2.50]:9022 ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBF4HBcLDFne0HyRgWlxF+cdsQtxHf9LIp6H6HSHWagg4zWQEQhFme7W626Vgl4ZWkwqRdiVmzYxXWnc7mo/zrlo=" >> /root/.ssh/known_hosts

#mkdir -p /root/.aws
#cp /etc/secret-volume/credentials /root/.aws/credentials

echo "export GOPATH=/root/godev" >> /etc/profile
echo "export PATH=$PATH:$GOPATH/bin"  >> /etc/profile
