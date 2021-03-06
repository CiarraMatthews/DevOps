#!/bin/bash
cp ~/secrets/terraform.tfvars.asc .
gpg --decrypt --nosymkey-cache --output ./terraform.tfvars ./terraform.tfvars.asc
terraform plan
terraform apply
sleep 60s
#makes sure you don't store credentials
rm ./terraform.tfvars*
