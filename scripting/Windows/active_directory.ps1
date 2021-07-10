#Install Active Directory
Add-WindowsFeature Ad-Domain-Services

#Specify options for Active Directory
Install-ADDSForest -DomainName tekperfect.corp -InstallDNS

#Password stored here for users
$Password = Read-Host -AsSecureString

#Adding New Users
New-LocalUser -Name "Qiqi" -Password $Password
New-LocalUser -Name "Ningguang" -Password $Password
New-LocalUser -Name "Chonyun" -Password $Password
New-LocalUser -Name "Kaeya" -Password $Password
New-LocalUser -Name "Diona" -Password $Password
New-LocalUser -Name "Kazuha Kaedehara" -Password $Password

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
