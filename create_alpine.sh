#!/bin/sh

# ./create_vm.sh vm1 Debian_64 1024 20000 3393 Downloads/debian-7.1.0-amd64-netinst.iso
# VBoxManage startvm vm1 -type headless
# VBoxManage unregistervm vm1 --delete


create_vm.sh $1 Linux64 4096 20000 3393 ~/Downloads/alpine-virt-3.12.0-x86_64.iso



