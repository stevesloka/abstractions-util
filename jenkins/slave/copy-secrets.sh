#!/bin/sh

sleep 2
mkdir -p /root/.ssh
ssh-keyscan git.tdc.upmc.edu >> /root/.ssh/known_hosts
cp /etc/secret-volume/id-rsa /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

mkdir -p /root/.aws
cp /etc/secret-volume/credentials /root/.aws/credentials
