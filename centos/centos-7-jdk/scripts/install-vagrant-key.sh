#!/bin/bash
_user=vagrant
_user_home=/home/$_user
_user_key="https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub"

mkdir -p ${_user_home}/.ssh
touch ${_user_home}/.ssh/authorized_keys
curl -LsSk ${_user_key} >> ${_user_home}/.ssh/authorized_keys
chmod 0600 ${_user_home}/.ssh/authorized_keys
chown -R ${_user}:${_user} ${_user_home}/.ssh
