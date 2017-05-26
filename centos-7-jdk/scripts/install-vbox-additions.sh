#!/bin/bash

_user=vagrant
_user_home=/home/$_user
_version=$(cat ${_user_home}/.vbox_version)
_kernel_version=$(uname -r)
_kernel_pkg=kernel-devel-$(uname -r)
_required_pkgs="gcc bzip2 make kernel-devel-${_kernel_version} gcc-c++ zlib-devel openssl-devel readline-devel"
_vbox_additions_path=${_user_home}/VBoxGuestAdditions_${_version}.iso

if [ -f "${_user_home}/.vbox_version" ]; then
  yum install -y ${_required_pkgs}
  mount -o loop ${_vbox_additions_path} /mnt
  sh /mnt/VBoxLinuxAdditions.run --nox11
  umount /mnt
  rm -rf ${_vbox_additions_path}
  rm -rf ${_user_home}/.vbox_version
  
  yum clean -y all
fi
