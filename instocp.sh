mkdir installit
cd installit
rm -f openshift-install-mac.tar.gz
wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/fast-4.5/openshift-install-mac.tar.gz
tar xvzf openshift-install-mac.tar.gz
./openshift-install version
rm -r -f gsw
mkdir gsw
cp ../install-config.yaml gsw
./openshift-install create manifests --dir=gsw
./openshift-install create ignition-configs --dir=gsw


scp gsw/* root@ctl:/tftp/webroot/ignition

#cp ~/gw.lo/gw/worker.ign ~
#rm -f ~/.kube/config
#cp gw/auth/kubeconfig ~/.kube/config
#rm ~/.kube/config
#cp gw/auth/kubeconfig ~/.kube/config
#scp gw/* root@store.gw.lo:/volume1/tftp
#./poweroff-all-vms.sh
#sleep 5
#./erase-all-vms.sh
#sleep 5
#./poweron-all-vms.sh
#./openshift-install --dir=gw wait-for bootstrap-complete --log-level debug
#ssh root@esx.gw.lo vim-cmd vmsvc/power.off 7
#./approvecsr.sh > approvecsr.out &
#./openshift-install --dir=gw wait-for install-complete --log-level debug





