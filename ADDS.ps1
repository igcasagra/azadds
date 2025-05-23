[CmdletBinding()]

param 
( 
    [Parameter(ValuefromPipeline=$true,Mandatory=$true)] [string]$Domain_DNSName,
    [Parameter(ValuefromPipeline=$true,Mandatory=$true)] [string]$Domain_NETBIOSName,
    [Parameter(ValuefromPipeline=$true,Mandatory=$true)] [String]$SafeModeAdministratorPassword
)
$SMAP = ConvertTo-SecureString -AsPlainText $SafeModeAdministratorPassword -Force
Set-NetFirewallProfile -Profile Public,Private,Domain -Enabled False
Install-windowsfeature -name AD-Domain-Services -IncludeManagementTools
Install-WindowsFeature DNS -IncludeAllSubFeature -IncludeManagementTools
Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath "C:\Windows\NTDS" -DomainMode "WinThreshold" -DomainName $Domain_DNSName -DomainNetbiosName $Domain_NETBIOSName -ForestMode "WinThreshold" -InstallDns:$true -LogPath "C:\Windows\NTDS" -NoRebootOnCompletion:$false -SysvolPath "C:\Windows\SYSVOL" -Force:$true -SkipPreChecks -SafeModeAdministratorPassword $SMAP
Restart-computer