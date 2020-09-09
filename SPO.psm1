function New-SharePointOnlineSite {
    param (
        $name
    )
    Import-Module -Name Microsoft.Online.SharePoint.PowerShell
    Connect-SPOService -Url https://$tenant-admin.sharepoint.com 
    New-SPOSite -Url https://$tenant.sharepoint.com/sites/minnyasajt -Owner joe.healy@contoso.com  -LocaleID 1053  -Template "STS#0" -TimeZoneId 4 -Title "Min nya sajt"
}