#requires -Version 4.0
<#
    Author: Luke Murray (Luke.Geek.NZ)
    Version: 0.1
    Purpose: Windows 10 Baseline Hardening using DSC.
#>

Configuration 'Win10'
{
  Import-DscResource -ModuleName PSDesiredStateConfiguration
  Node localhost
  {
    Registry 'EnhancedAntiSpoofing'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Biometrics\FacialFeatures'
      ValueName = 'EnhancedAntiSpoofing'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DisableEnclosureDownload'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Internet Explorer\Feeds'
      ValueName = 'DisableEnclosureDownload'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'FormSuggest Passwords'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\MicrosoftEdge\Main'
      ValueName = 'FormSuggest Passwords'
      ValueType = 'String'
      ValueData = 'no'
    }
    Registry 'PreventOverrideAppRepUnknown'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter'
      ValueName = 'PreventOverrideAppRepUnknown'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'PreventOverride'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter'
      ValueName = 'PreventOverride'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'EnabledV9'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter'
      ValueName = 'EnabledV9'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'ACSettingIndex'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51'
      ValueName = 'ACSettingIndex'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DCSettingIndex'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51'
      ValueName = 'DCSettingIndex'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DisableWindowsConsumerFeatures'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\CloudContent'
      ValueName = 'DisableWindowsConsumerFeatures'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry '1'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceClasses'
      ValueName = '1'
      ValueType = 'String'
      ValueData = '{d48179be-ec20-11d1-b6b8-00c04fa372a7}'
    }
    Registry '11'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs'
      ValueName = '1'
      ValueType = 'String'
      ValueData = 'PCI\CC_0C0A'
    }
    Registry 'DenyDeviceIDsRetroactive'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions'
      ValueName = 'DenyDeviceIDsRetroactive'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DenyDeviceIDs'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions'
      ValueName = 'DenyDeviceIDs'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DenyDeviceClasses'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions'
      ValueName = 'DenyDeviceClasses'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DenyDeviceClassesRetroactive'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions'
      ValueName = 'DenyDeviceClassesRetroactive'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'MaxSize'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\EventLog\Application'
      ValueName = 'MaxSize'
      ValueType = 'DWord'
      ValueData = '32768'
    }
    Registry 'MaxSize1'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\EventLog\Security'
      ValueName = 'MaxSize'
      ValueType = 'DWord'
      ValueData = '196608'
    }
    Registry 'MaxSize2'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\EventLog\System'
      ValueName = 'MaxSize'
      ValueType = 'DWord'
      ValueData = '32768'
    }
    Registry 'NoHeapTerminationOnCorruption'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Explorer'
      ValueName = 'NoHeapTerminationOnCorruption'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'NoAutoplayfornonVolume'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Explorer'
      ValueName = 'NoAutoplayfornonVolume'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'NoDataExecutionPrevention'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Explorer'
      ValueName = 'NoDataExecutionPrevention'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'NoBackgroundPolicy'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Group Policy\{35378EAC-683F-11D2-A89A-00C04FBBCFA2}'
      ValueName = 'NoBackgroundPolicy'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'NoGPOListChanges'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Group Policy\{35378EAC-683F-11D2-A89A-00C04FBBCFA2}'
      ValueName = 'NoGPOListChanges'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'AlwaysInstallElevated'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Installer'
      ValueName = 'AlwaysInstallElevated'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'EnableUserControl'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Installer'
      ValueName = 'EnableUserControl'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'AllowInsecureGuestAuth'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\LanmanWorkstation'
      ValueName = 'AllowInsecureGuestAuth'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'NC_ShowSharedAccessUI'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Network Connections'
      ValueName = 'NC_ShowSharedAccessUI'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry '\\*\SYSVOL'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths'
      ValueName = '\\*\SYSVOL'
      ValueType = 'String'
      ValueData = 'RequireMutualAuthentication=1, RequireIntegrity=1'
    }
    Registry '\\*\NETLOGON'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths'
      ValueName = '\\*\NETLOGON'
      ValueType = 'String'
      ValueData = 'RequireMutualAuthentication=1, RequireIntegrity=1'
    }
    Registry 'NoLockScreenSlideshow'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Personalization'
      ValueName = 'NoLockScreenSlideshow'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'NoLockScreenCamera'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Personalization'
      ValueName = 'NoLockScreenCamera'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'EnableScriptBlockInvocationLogging'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging'
      ValueName = 'EnableScriptBlockInvocationLogging'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'EnableScriptBlockLogging'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging'
      ValueName = 'EnableScriptBlockLogging'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'EnableSmartScreen'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System'
      ValueName = 'EnableSmartScreen'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'AllowDomainPINLogon'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System'
      ValueName = 'AllowDomainPINLogon'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'DontDisplayNetworkSelectionUI'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System'
      ValueName = 'DontDisplayNetworkSelectionUI'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'EnumerateLocalUsers'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System'
      ValueName = 'EnumerateLocalUsers'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'fBlockNonDomain'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WcmSvc\GroupPolicy'
      ValueName = 'fBlockNonDomain'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'AllowIndexingEncryptedStoresOrItems'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windows Search'
      ValueName = 'AllowIndexingEncryptedStoresOrItems'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'AllowDigest'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WinRM\Client'
      ValueName = 'AllowDigest'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'AllowBasic'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WinRM\Client'
      ValueName = 'AllowBasic'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'AllowUnencryptedTraffic'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WinRM\Client'
      ValueName = 'AllowUnencryptedTraffic'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'AllowBasic1'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WinRM\Service'
      ValueName = 'AllowBasic'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'AllowUnencryptedTraffic1'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WinRM\Service'
      ValueName = 'AllowUnencryptedTraffic'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'DisableRunAs'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WinRM\Service'
      ValueName = 'DisableRunAs'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DisableBehaviorMonitoring'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender\Real-Time Protection'
      ValueName = 'DisableBehaviorMonitoring'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'DisableEmailScanning'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender\Scan'
      ValueName = 'DisableEmailScanning'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'DisableRemovableDriveScanning'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender\Scan'
      ValueName = 'DisableRemovableDriveScanning'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'LocalSettingOverrideSpynetReporting'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender\Spynet'
      ValueName = 'LocalSettingOverrideSpynetReporting'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'SpynetReporting'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender\Spynet'
      ValueName = 'SpynetReporting'
      ValueType = 'DWord'
      ValueData = '2'
    }
    Registry 'SubmitSamplesConsent'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender\Spynet'
      ValueName = 'SubmitSamplesConsent'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DisableAntiSpyware'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender'
      ValueName = 'DisableAntiSpyware'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'MitigationOptions_FontBocking'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\MitigationOptions'
      ValueName = 'MitigationOptions_FontBocking'
      ValueType = 'String'
      ValueData = '1000000000000'
    }
    Registry 'DisableWebPnPDownload'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Printers'
      ValueName = 'DisableWebPnPDownload'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DisableHTTPPrinting'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Printers'
      ValueName = 'DisableHTTPPrinting'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'RestrictRemoteClients'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Rpc'
      ValueName = 'RestrictRemoteClients'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'fUseMailto'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services'
      ValueName = 'fUseMailto'
      ValueType = 'String'
      ValueData = ' '
    }
    Registry 'fAllowToGetHelp'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services'
      ValueName = 'fAllowToGetHelp'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'fAllowFullControl'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services'
      ValueName = 'fAllowFullControl'
      ValueType = 'String'
      ValueData = ' '
    }
    Registry 'MaxTicketExpiryUnits'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services'
      ValueName = 'MaxTicketExpiryUnits'
      ValueType = 'String'
      ValueData = ' '
    }
    Registry 'MaxTicketExpiry'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services'
      ValueName = 'MaxTicketExpiry'
      ValueType = 'String'
      ValueData = ' '
    }
    Registry 'fPromptForPassword'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services'
      ValueName = 'fPromptForPassword'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DisablePasswordSaving'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services'
      ValueName = 'DisablePasswordSaving'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'fDisableCdm'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services'
      ValueName = 'fDisableCdm'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'MinEncryptionLevel'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services'
      ValueName = 'MinEncryptionLevel'
      ValueType = 'DWord'
      ValueData = '3'
    }
    Registry 'fEncryptRPCTraffic'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services'
      ValueName = 'fEncryptRPCTraffic'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'LogFileSize'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging'
      ValueName = 'LogFileSize'
      ValueType = 'DWord'
      ValueData = '16384'
    }
    Registry 'LogSuccessfulConnections'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging'
      ValueName = 'LogSuccessfulConnections'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'LogDroppedPackets'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging'
      ValueName = 'LogDroppedPackets'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DisableNotifications'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
      ValueName = 'DisableNotifications'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'EnableFirewall'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
      ValueName = 'EnableFirewall'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DefaultInboundAction'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
      ValueName = 'DefaultInboundAction'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DefaultOutboundAction'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
      ValueName = 'DefaultOutboundAction'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'LogFileSize1'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging'
      ValueName = 'LogFileSize'
      ValueType = 'DWord'
      ValueData = '16384'
    }
    Registry 'LogSuccessfulConnections1'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging'
      ValueName = 'LogSuccessfulConnections'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'LogDroppedPackets1'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging'
      ValueName = 'LogDroppedPackets'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'EnableFirewall1'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
      ValueName = 'EnableFirewall'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DisableNotifications1'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
      ValueName = 'DisableNotifications'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DefaultOutboundAction1'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
      ValueName = 'DefaultOutboundAction'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'DefaultInboundAction1'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
      ValueName = 'DefaultInboundAction'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'LogDroppedPackets2'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging'
      ValueName = 'LogDroppedPackets'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'LogFileSize2'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging'
      ValueName = 'LogFileSize'
      ValueType = 'DWord'
      ValueData = '16384'
    }
    Registry 'LogSuccessfulConnections2'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging'
      ValueName = 'LogSuccessfulConnections'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'AllowLocalPolicyMerge'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
      ValueName = 'AllowLocalPolicyMerge'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'EnableFirewall2'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
      ValueName = 'EnableFirewall'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'DefaultOutboundAction2'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
      ValueName = 'DefaultOutboundAction'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'DefaultInboundAction2'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
      ValueName = 'DefaultInboundAction'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'AllowLocalIPsecPolicyMerge'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
      ValueName = 'AllowLocalIPsecPolicyMerge'
      ValueType = 'DWord'
      ValueData = '0'
    }
    Registry 'DisableNotifications2'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
      ValueName = 'DisableNotifications'
      ValueType = 'DWord'
      ValueData = '1'
    }
    Registry 'AdmPwdEnabled'
    {
      Ensure = 'Present'
      Key = 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft Services\AdmPwd'
      ValueName = 'AdmPwdEnabled'
      ValueType = 'DWord'
      ValueData = '1'
    }
  }
}
Win10
#Start-DscConfiguration -Path ./Win10