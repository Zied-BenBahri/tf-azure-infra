#!/bin/bash

IP=$(terraform output -raw vm_public_ip)

mkdir -p ansible

cat > ansible/inventory.ini << EOF
[web]
$IP ansible_user=azureuser ansible_ssh_pass=$(grep admin_password terraform.tfvars | cut -d'"' -f2)

[web:vars]
ansible_python_interpreter=/usr/bin/python3
EOF
