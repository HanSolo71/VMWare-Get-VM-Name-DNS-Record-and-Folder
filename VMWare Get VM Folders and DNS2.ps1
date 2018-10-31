Import-Module VMware.VimAutomation.Cis.Core
Import-Module VMware.VimAutomation.Common
Import-Module VMware.VimAutomation.Core


Connect-VIServer vcenter.contoso.com
get-vm | select folder,  name, @{N="DnsName"; E={$_.ExtensionData.Guest.Hostname}} | Export-CSV C:\Temp\DNStoVM.csv