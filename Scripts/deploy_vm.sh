#!/bin/bash

# Usage: ./deploy_vm.sh [http|local] VM_NAME LAST_OCTET

MODE="$1"
SERVER="$2"
LAST_OCTET="$3"
IP="192.168.0.$LAST_OCTET"

# Determine kickstart source
if [[ "$MODE" == "http" ]]; then
    KS="http://152.67.191.181/init-ks.cfg"
else
    KS="file:/root/init-ks.cfg"
fi

virt-install \
  --name "$SERVER" \
  --ram 4096 \
  --vcpus 2 \
  --disk size=50,path="/var/lib/libvirt/images/$SERVER.qcow2",format=qcow2 \
  --os-variant ol9.2 \
  --network bridge=br0 \
  --graphics none \
  --location /ISO/OracleLinux-R9-U2-x86_64-dvd.iso \
  --initrd-inject=init-ks.cfg \
  --extra-args "inst.ks=$KS IPADDR=$IP HOSTNAME=$SERVER NETMASK=255.255.255.0 GATEWAY=192.168.0.1 NS=8.8.8.8 console=ttyS0"

