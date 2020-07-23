export mac=`get_mac.sh $1`
echo $mac
#ssh root@otl.gsw.lo 'cp /tftp/webroot/ipxe/rhel8min.ipxe mac/${mac}'

scp root@ctl.gsw.lo:/tftp/webroot/ipxe/rhel8min.ipxe /tmp/${mac}.ipxe
scp /tmp/${mac}.ipxe root@ctl.gsw.lo:/tftp/webroot/ipxe/mac/${mac}

