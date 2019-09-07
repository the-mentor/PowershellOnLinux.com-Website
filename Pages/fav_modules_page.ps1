$PageName = 'FavoriteModules'
New-UDPage -Name $PageName -Icon Cogs -Content { 
    New-UDHelmet -Content {
        <#
        New-UDHtmlTag -Tag 'script' -Attributes @{
            src = 'https://platform.twitter.com/widgets.js'
            async = "true"
        }
        #>
        New-UDHtmlTag -Tag 'title' -Content { "PowerShellOnLinux - $PageName" }
    }

    New-UDRow -Columns {
        New-UDColumn -Size 12 {
            New-UDCard -Endpoint {
                $mdModules = (Get-Content -Raw -Path "$MarkdownFolder\Favorite_Modules.md") -split '---'
                foreach ($mdModule in $mdModules){
                    New-UDCard -Content {
                        New-UDMarkdown -Markdown $mdModule -Styles @{
                            root = @{
                                border = '2px solid rgb(24, 26, 31)'
                                'background-color' = '#343a40'
                                margin = '20px 0'
                            }
                            img = @{
                                # width = '50%'; 
                                display = 'block'; 
                                'margin-left' = 'auto'; 
                                'margin-right' = 'auto'
                            }
                        }
                    }                     
                }
            }
        }
    }
}