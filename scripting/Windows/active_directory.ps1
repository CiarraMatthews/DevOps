#Install Active Directory
Add-WindowsFeature Ad-Domain-Services

#Specify options for Active Directory
Install-ADDSForest -DomainName tekperfect.corp -InstallDNS

#Password stored here for users
$Password = Read-Host -AsSecureString

#Adding New Users
New-ADUser -Name "Qiqi" -Password $Password
New-ADUser -Name "Ningguang" -Password $Password
New-ADUser -Name "Chonyun" -Password $Password
New-ADUser -Name "Kaeya" -Password $Password
New-ADUser -Name "Diona" -Password $Password
New-ADUser -Name "Kazuha Kaedehara" -Password $Password

#Adding New Groups
NEW-ADGroup -name "HR" -groupscope Global
NEW-ADGroup -name "Finances" -groupscope Global
NEW-ADGroup -name "IT" -groupscope Global
NEW-ADGroup -name "Sales" -groupscope Global
NEW-ADGroup -name "DevOps" -groupscope Global

#Adding New OUs
New-ADOrganizationalUnit -Name "HR"
New-ADOrganizationalUnit -Name "Finances"
New-ADOrganizationalUnit -Name "IT"
New-ADOrganizationalUnit -Name "Sales"
New-ADOrganizationalUnit -Name "DevOps"

#Lists users on system
net user
