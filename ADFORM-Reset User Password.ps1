#This script will 
#1-Ask for the username (please check you username policy)
#2-It will aks to type in a new password for the user, please note that you have to verify the password (type it in twice). Please also note here you Password Policy..
#Written by Amanuyl Ok System Administrator\DevOps - Last update 18-12-2017

#Start Script

$User = Read-Host -Prompt 'Input username of whom you want to change the password'
Get-AdUser -Identity $User
$DName = Get-ADUser -Identity $User -Properties "DistinguishedName"
Set-ADAccountPassword -Identity $DName -Reset
