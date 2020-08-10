#Generating report about Dl and their SMTP along with members

$list=foreach ($i in Get-DistributionGroup) 

{ 

    Get-DistributionGroupMember -Identity $i.Name | `
    
    Select-Object @{n='GroupName';e={$i.DisplayName}},manager,@{n='Member';e={$_.DisplayName}},@{n='Description';`
    
    e={$i.Description}},@{n='Group_Emailaddress';e={$i.EmailAddresses}},@{n='User_Emailaddress';e={$_.PrimarySmtpAddress}}

}





