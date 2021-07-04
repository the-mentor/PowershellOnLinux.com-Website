{
    Add-PodeEndpoint -Address localhost -Port 8090 -Protocol Http 

    # this will bind the site to the Admin endpoint
    Use-PodeWebTemplates -Title 'PowerShellOnLinux' -Theme Light -FavIcon 'powershell' -NoPageFilter -Logo '/Assets/Images/Logo_400x400.jpg'
    Import-PodeWebJavaScript -Url 'https://platform.twitter.com/widgets.js'

    $navAbout = New-PodeWebNavLink -Name 'About' -Url '/pages/About' -Icon 'help-circle'
    $navDiv = New-PodeWebNavDivider

    $navDropdown = New-PodeWebNavDropdown -Name 'Social Media' -Icon 'smile' -Items @(
        New-PodeWebNavLink -Name 'Twitter' -Url 'https://twitter.com/posh4linux' -Icon 'twitter' -NewTab

        New-PodeWebNavDivider
        
        New-PodeWebNavLink -Name 'Telegram - PowerShellOnLinux Group' -Url 'https://t.me/PowershellOnLinux' -Icon 'telegram' -NewTab

        New-PodeWebNavLink -Name 'Telegram - Israel PowerShell Group' -Url 'https://t.me/IsraelPowershellUserGroup' -Icon 'telegram' -NewTab

        New-PodeWebNavDivider

        New-PodeWebNavLink -Name 'PowerShellOnLinux Group (Element/Matrix)' -Url 'https://matrix.to/#/!ftrCnWRocDJueqVraQ:matrix.org?via=matrix.org&via=poshcode.org&via=t2bot.io' -Icon 'message' -NewTab

        New-PodeWebNavDivider

        New-PodeWebNavLink -Name 'Telegram - Israel Linux User Group' -Url 'https://t.me/ILLUG' -Icon 'telegram' -NewTab

        New-PodeWebNavDivider

        New-PodeWebNavLink -Name 'Dev.to Blog' -Url 'https://dev.to/thementor/' -Icon 'post' -NewTab

        New-PodeWebNavDivider

        New-PodeWebNavLink -Name "This Site's Source Code - GitHub" -Url 'https://github.com/the-mentor/PowershellOnLinux.com-Website' -Icon 'github' -NewTab
        
    )

    Set-PodeWebNavDefault -Items $navAbout, $navDiv, $navDropdown
    
    #Homepage 
    . $PSScriptRoot\Pages\home_page.ps1  
    
    #Additional Pages
    Add-PodeWebPage -Name 'Favorite Modules' -Icon 'bookmark-check' -ScriptBlock {
        $mdModules = (Get-Content -Raw -Path "$PSScriptRoot\Markdown_Content\Favorite_Modules.md") -split '---'
        foreach ($Module in $mdModules){
            New-PodeWebCard -NoHide  -Content @(
                New-PodeWebRaw -Value $(($Module|ConvertFrom-Markdown).Html)
            )
        }
    }

    Add-PodeWebPage -Name 'About' -Icon 'help-circle' -ScriptBlock {
        New-PodeWebCard -NoHide -Content @(
            New-PodeWebRaw -Value 'This site aim to aggregate information about PowerShell and its use in the linux echo-system.<br>
            We are just getting started.<br>
            If you have any suggestions or ideas for improvements please drop by one of our social media links and let us know.<br><br>

            Thanks and have a great day!
            '
        )
    }

    <#
    Add-PodeWebPage -Name 'PowerShellOnLinux Telegram Group' -Icon 'message-square' -ScriptBlock {
        New-PodeWebCard -Content @(
            New-PodeWebTable -Name 'Processes' -Filter -Sort -ScriptBlock {
                foreach ($ps in (Get-Process)) {
                    [ordered]@{
                        Name   = $ps.Name
                        CPUUsage = "$($ps.CPU)"
                    }
                }
            }
        )
    }
    #>
}