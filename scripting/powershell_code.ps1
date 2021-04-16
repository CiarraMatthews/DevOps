Add-WindowsFeature Ad-Domain-Services
Install-ADDSForest -DomainName tekperfect.corp -InstallDNS
$Password = Read-Host -AsSecureString
New-LocalUser -Name "Qiqi" -Password $Password #x5
NEW-ADGroup -name "HR" -groupscope Global
New-ADOrganizationalUnit -Name "Sales"
