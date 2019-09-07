<#
Version 0.2
#>
Import-Module -Name $PSScriptRoot\Modules\UniversalDashboard.Helmet
Import-Module -Name $PSScriptRoot\Modules\UniversalDashboard.Markdown

$MarkdownFolder = "$PSScriptRoot\Markdown_Content"
$AssetsFolder = Publish-UDFolder -Path "$PSScriptRoot\Assets" -RequestPath "/Assets"
$AssetsBaseURL = $AssetsFolder.RequestPath
$ImagesBaseURL = "$AssetsBaseURL/Images"
$LogoImgURL = "$ImagesBaseURL/Logo_400x400.jpg"
$LogoImg = New-UDImage -Url $LogoImgURL -Height 40 -Width 50

$EndpointInitialization = New-UDEndpointInitialization -Module @("$PSScriptRoot\Modules\UniversalDashboard.Markdown") -Variable @("MarkdownFolder",'PSScriptRoot')

$Pages = @()
$Pages += . (Join-Path -Path $PSScriptRoot -ChildPath "pages\home_page.ps1")
$Pages += . (Join-Path -Path $PSScriptRoot -ChildPath "pages\contact_page.ps1")
$Pages += . (Join-Path -Path $PSScriptRoot -ChildPath "pages\fav_modules_page.ps1")

$Navigation = New-UDSideNav -Content {
    New-UDSideNavItem -Text "Home" -Url "Home" -Icon Home
    New-UDSideNavItem -Text "Favorite Modules" -Url "/FavoriteModules" -Icon Cogs 
    New-UDSideNavItem -Text "Dev.to Blog"  -Icon blog -OnClick { Invoke-UDRedirect -Url "https://dev.to/thementor/" -OpenInNewWindow }
    New-UDSideNavItem -Text "PowerShellOnLinux Group"  -Icon Telegram -OnClick { Invoke-UDRedirect -Url "https://t.me/PowershellOnLinux" -OpenInNewWindow }
    New-UDSideNavItem -Text "IL PowerShell Group"  -Icon Telegram  -OnClick { Invoke-UDRedirect -Url "https://t.me/IsraelPowershellUserGroup" -OpenInNewWindow }
    New-UDSideNavItem -Text "IL Linux User Group"  -Icon Telegram  -OnClick { Invoke-UDRedirect -Url "https://t.me/ILLUG" -OpenInNewWindow }
    New-UDSideNavItem -Text "UD Documentation"  -Icon Book -OnClick { Invoke-UDRedirect -Url "https://docs.universaldashboard.io" -OpenInNewWindow }
    New-UDSideNavItem -Text "Contact" -Url "/Contact" -Icon Phone 

} -Fixed

Start-UDDashboard -Wait -Dashboard (
    New-UDDashboard -Title "PowerShellOnLinux" -Navigation $Navigation -NavBarLogo $LogoImg -Pages $Pages -EndpointInitialization $EndpointInitialization
) -PublishedFolder $AssetsFolder
