#indicates a bash script
#!/bin/bash
#copies terraform.tfvars.asc to the current directory
cp ~/secrets/terraform.tfvars.asc .
#decrypts the encrypted terraform.tfvars.asc file
gpg --decrypt --nosymkey-cache --output ./terraform.tfvars ./terraform.tfvars.asc
#generates and shows an execution plan
terraform plan
#builds or changes infrastructure
terraform apply
#delays execution of line that comes after it
sleep 60s
#makes sure you don't store credentials
rm ./terraform.tfvars*
