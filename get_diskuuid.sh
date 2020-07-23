vboxmanage showmediuminfo disk ~/VirtualBox\ VMs/$1/$1-disk001.vmdk | awk 'NR == 1' | awk '{ print $2 }'



