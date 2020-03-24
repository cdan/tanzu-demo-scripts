#!/usr/bin/expect

set gc [lindex $argv 0]

eval spawn kubectl vsphere login --server=192.168.123.1 --vsphere-username administrator@vsphere.local --insecure-skip-tls-verify --tanzu-kubernetes-cluster-name $gc
expect "Password"
send "Admin!23\r"
interact
