#!/bin/bash

IP=$(terraform output -raw vm_public_ip)
PASSWORD=$(grep admin_password terraform.tfvars | cut -d'"' -f2)

mkdir -p ansible

cat > ansible/inventory.ini << EOINV
[web]
$IP ansible_user=azureuser ansible_ssh_pass=$PASSWORD

[web:vars]
ansible_python_interpreter=/usr/bin/python3
EOINV
EOF