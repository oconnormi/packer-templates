#!/bin/bash

yum install -y avahi

systemctl enable avahi-daemon
