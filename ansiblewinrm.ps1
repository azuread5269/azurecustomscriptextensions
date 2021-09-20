$GI = Get-Item WSMan:\localhost\Service\AllowUnencrypted
IF (!($GI.Value -match 'true'))
{
    Write-Warning "AllowUnencrypted not already configured, so configuring" -Verbose
    Set-Item WSMan:\localhost\Service\AllowUnencrypted -value true
}
ELSE
{
    Write-Verbose "AllowUnencrypted already configured" -Verbose
}
