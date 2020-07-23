diskuuid=`./get_diskuuid.sh $1`
vboxmanage storageattach $1 --storagectl SATA --port 0 --medium none
vboxmanage closemedium disk $diskuuid --delete
rm -r -f ~/VirtualBox\ VMs/$1/$1-disk001.vmdk
VBoxManage createhd --filename ~/VirtualBox\ VMs/$1/$1-disk001.vmdk --size 900000 --format VMDK
diskuuid=`./get_diskuuid.sh $1`
vboxmanage storageattach $1 --storagectl SATA --type hdd --port 0 --medium $diskuuid

