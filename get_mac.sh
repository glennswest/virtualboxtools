VBoxManage showvminfo $1 |  grep 'MAC' | awk '/MAC/ { print $4 }' | sed 's/,*$//g' | sed -e 's/\([0-9A-Fa-f]\{2\}\)/\1-/g' -e 's/\(.*\)-$/\1/' | tr '[:upper:]' '[:lower:]'

