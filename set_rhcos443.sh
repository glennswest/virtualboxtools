export mac=`./get_mac.sh $1`
echo $mac

scp root@ctl.gsw.lo:/tftp/webroot/ipxe/rhcos443.ipxe /tmp/${mac}.ipxe
scp /tmp/${mac}.ipxe root@ctl.gsw.lo:/tftp/webroot/ipxe/mac/${mac}

