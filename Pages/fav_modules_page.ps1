$PageName = 'Favorite Modules'
$PageIcon = 'Cogs'

Add-PodeWebPage -Name $PageName -Icon $PageIcon -ScriptBlock {
    $mdModules = (Get-Content -Raw -Path "../$PSScriptRoot/Markdown_Content/Favorite_Modules.md") -split '---'
    foreach ($Module in $mdModules){
        New-PodeWebCard -NoHide  -Content @(
            New-PodeWebRaw -Value $(($Module|ConvertFrom-Markdown).Html)
        )
    }
}