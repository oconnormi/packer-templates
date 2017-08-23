#!/bin/bash

yum install -y avahi

systemctl enable avahi-daemon

yum install -y epel-release
yum install -y nss-mdns
sed -i 's/hosts:      files dns myhostname/hosts:          files mdns4_minimal [NOTFOUND=return] dns/g' /etc/nsswitch.conf
