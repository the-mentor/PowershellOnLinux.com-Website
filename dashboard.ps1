$NavBarLinks = @(
    (New-UDLink -Text "UD Documentation" -Url "https://docs.universaldashboard.io" -Icon book)
)

$HomePage = New-UDPage -Name "Home" -Icon home -Content { 
    New-UDCard -Title "PowerShell On Linux Website PlaceHolder" 
} 

$Page2 = New-UDPage -Name "Blog" -Icon home -Content { 
    New-UDCard -Title "PowerShell On Linux Website PlaceHolder" 
} 

Start-UDDashboard -Wait -Dashboard (
    New-UDDashboard -Title "PowerShellOnLinux" -NavbarLinks $NavBarLinks -Pages @($HomePage,$Page2)
)
