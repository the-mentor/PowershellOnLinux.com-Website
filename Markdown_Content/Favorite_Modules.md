### Favorite Modules

- Below you will find a list of **PowerShell Modules** that we've found useful.
- The modules were tested on Linux and verified to work.
--- 
#### UniversalDashboard.Community
##### Note
The PowerShellOnLinux.com website is built on this modules.

##### Description
PowerShell Universal Dashboard is a web framework for PowerShell developers. Create websites, REST APIs and dashboards with only PowerShell script. The client and server side code for the dashboard is authored completely in PowerShell. Charts, monitors, tables and grids can easily be created with the cmdlets included with the module.The module is cross-platform and will run anywhere Windows PowerShell or PowerShell Core can run.  
[Website](https://universaldashboard.io/), [GitHub](https://github.com/ironmansoftware/universal-dashboard),  [Get Started](https://docs.universaldashboard.io/getting-started)

##### Install

```
Install-Module UniversalDashboard.Community -AcceptLicense
```

--- 
#### Selenium PowerShell

##### Description
Selenium automates browsers. That's it! What you do with that power is entirely up to you. Primarily, it is for automating web applications for testing purposes, but is certainly not limited to just that. Boring web-based administration tasks can (and should!) be automated as well. This module is a powershell implementation of Selenium.  
[Github](https://github.com/adamdriscoll/selenium-powershell)

##### Install

```
Install-Module Selenium
```
---
#### dbatools

##### Description
If you want to manage MS SQL servers from Linux this is the module for you!.  
At the time of this writing the module is only 75% compatible with Linux but hopefully it wont be long until we see 100% compatibility.

dbatools is a free PowerShell module with over 500 SQL Server administration, best practice and migration commands included.

[Website](https://dbatools.io/), [GitHub](https://github.com/adamdriscoll/selenium-powershell), [Get Started](https://dbatools.io/getting-started/)

##### Install

```
Install-Module dbatools
```

---
#### VMware PowerCLI
##### Description
VMware describes PowerCLI as a powerful command-line tool that lets you automate all aspects of vSphere management, including network, storage, VM, guest OS and more. 
The PowerCLI Module includes over 500 PowerShell cmdlets for managing and automating vSphere.

PowerCLI runs in PowerShell on Linux, macOS and Windows operating systems.  

##### Install

```
Install-Module VMware.PowerCLI
```

#### FreeNas

##### Description
If you want to manage FreeNAS/TrueNAS servers from PowerShell on Linux/Mac/Windows this is the module for you.  
This module uses the FreeNas and TrueNas Rest v1.0 API 
You can find more information in this [Blog Post](https://jm2k69.github.io/2019-03-18-PowerShell-Module-for-FreeNas-and-TrueNas/)

[GitHub](https://github.com/JM2K69/FreeNas)

##### Install

```
Install-Module FreeNAS
```