$PageName = 'Home'
New-UDPage -Name $PageName -Icon home -Content { 
    New-UDHelmet -Content {
        New-UDHtmlTag -Tag 'script' -Attributes @{
            src = 'https://platform.twitter.com/widgets.js'
            async = "true"
        }
        New-UDHtmlTag -Tag 'title' -Content { "PowerShellOnLinux - $PageName" }
    }
    New-UDRow -Columns {
        New-UDColumn -Size 8 {
            New-UDCard -Title "Welcome," -Content {
                New-UDHtml -Markup "
                We'd like to welcome you to a brand new PowerShell community site.<br>
                Our Site is focused on everything PowerShell regardless of which OS you are running but we are specifically focused on Linux and Mac.<br>
                The reason we are focused on Linux and Mac is because there are much less PowerShell resources out there for those platforms.<br>
                Our Mission is to be helpful and try to help you learn and advance your PowerShell and Automation skills.<br>
                If you have a questions feel free to join our Telegram group and ask for assistance.<br><br>

                May the PowerShell Be with You !


                "

            }
        }
        
        New-UDColumn -Size 4 {
            New-UDCard -Content {
                New-UDHtml -Markup '<a class="twitter-timeline" href="https://twitter.com/PoSH4Linux?ref_src=twsrc%5Etfw">Tweets by PowerShellOnLinux</a>'
                
            }
        }
    }
}