$PageName = 'Contact'
New-UDPage -Name $PageName -Icon home -Content { 
    New-UDHelmet -Content {
        New-UDHtmlTag -Tag 'title' -Content { "PowerShellOnLinux - $PageName" }
    }

    New-UDRow  -Columns {
        New-UDColumn -SmallOffset 3 -SmallSize 6  {
            New-UDCard -Title "Contact - UNDER CONSTRUCTION - NOT WORKING!!!" -Content {
                'Hi there,
                Have something to say? Ideas to Improve the site and the community?
                Send us a message:
                '
                New-UDInput -Title "Contact Form" -Id "ContactForm"  -Content {
                    New-UDInputField -Type 'textbox' -Name 'Name' -Placeholder 'Name (required)'
                    New-UDInputField -Type 'textbox' -Name 'Email' -Placeholder 'Email Address (required)'
                    New-UDInputField -Type 'textbox' -Name 'Subject' -Placeholder 'Subject (required)'
                    #New-UDInputField -Type 'checkbox' -Name 'Newsletter' -Placeholder 'Sign up for newsletter'
                    #New-UDInputField -Type 'select' -Name 'FavoriteLanguage' -Placeholder 'Favorite Programming Language' -Values @("PowerShell", "Python", "C#")
                    #New-UDInputField -Type 'radioButtons' -Name 'FavoriteEditor' -Placeholder @("Visual Studio", "Visual Studio Code", "Notepad") -Values @("VS", "VSC", "NP")
                    #New-UDInputField -Type 'password' -Name 'password' -Placeholder 'Password'
                    New-UDInputField -Type 'textarea' -Name 'message' -Placeholder 'Enter your message here...' 
                } -Endpoint {
                    param($Email
                    #, $Newsletter, $FavoriteLanguage, $FavoriteEditor, $password, $notes
                    )
                }
                
            }
        }
        
    }
}