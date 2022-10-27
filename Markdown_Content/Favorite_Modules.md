### Favorite Modules

- Below you will find a list of **PowerShell Modules** that we've found useful.
- The modules were tested on Linux and verified to work.
---
#### Pode Web
##### Note
The PowerShellOnLinux.com website is built on this modules.

##### Description
This is a web template framework for use with the Pode PowerShell web server (v2.2.0+).
It allows you to build web pages purely with PowerShell - no HTML, CSS, or JavaScript knowledge required!
You can build charts, forms, tables, general text, tabs, login pages, etc. There's a light, dark, and terminal themes, and you can supply a custom CSS file.

[Website & Documentation](https://badgerati.github.io/Pode.Web/), [GitHub](https://github.com/Badgerati/Pode.Web)

##### Install

```
Install-Module -Name Pode.Web
```
---
#### Pode
##### Description
Pode is a cross-platform PowerShell framework, completely written in PowerShell, for creating web servers to host REST APIs, Web Pages, and SMTP/TCP Servers. Pode also allows you to render dynamic files using template engines, and has support for authentication and logging. There are many more features, including Azure Functions and AWS Lambda support.

[Website & Documentation](https://badgerati.github.io/Pode/), [GitHub](https://github.com/Badgerati/Pode)

##### Install

```
Install-Module Pode
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

[Website](https://dbatools.io/), [GitHub](https://github.com/sqlcollaborative/dbatools), [Get Started](https://dbatools.io/getting-started/)

##### Install

```
Install-Module dbatools
```

---
#### 
Invoke-Build
##### Description
Invoke-Build is a build and test automation tool which invokes tasks defined in PowerShell v2.0+ scripts. It is similar to psake but arguably easier to use and more powerful. It is complete, bug free, well covered by tests.

In addition to basic task processing the engine supports

Incremental tasks with effectively processed inputs and outputs.
Persistent builds which can be resumed after interruptions.
Parallel builds in separate workspaces with common stats.
Batch invocation of tests composed as tasks.
Ability to define new classes of tasks.

[Documentation](https://github.com/nightroman/Invoke-Build/wiki), [GitHub](https://github.com/nightroman/Invoke-Build)

##### Install

```
Install-Module -Name InvokeBuild
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

---
#### FreeNas

##### Description
If you want to manage FreeNAS/TrueNAS servers from PowerShell on Linux/Mac/Windows this is the module for you.  
This module uses the FreeNas and TrueNas Rest v1.0 API.   
You can find more information in this [Blog Post](https://jm2k69.github.io/2019-03-18-PowerShell-Module-for-FreeNas-and-TrueNas/)

[GitHub](https://github.com/JM2K69/FreeNas)

##### Install

```
Install-Module FreeNAS
```

---
#### Posh-Git

##### Description
Posh-Git is a PowerShell module that integrates Git and PowerShell by providing Git status summary information that can be displayed in the PowerShell prompt, e.g.:  
<img src='https://raw.githubusercontent.com/wiki/dahlbyk/posh-git/images/PromptDefaultLong.png'>  
posh-git also provides tab completion support for common git commands, branch names, paths and more.
For example, with posh-git, PowerShell can tab complete git commands like `checkout` by typing `git ch` and pressing
the <kbd>tab</kbd> key. That will tab complete to `git checkout` and if you keep pressing <kbd>tab</kbd>, it will
cycle through other command matches such as `cherry` and `cherry-pick`. You can also tab complete remote names and
branch names e.g.: `git pull or<tab> ma<tab>` tab completes to `git pull origin master`.

[Website](http://dahlbyk.github.io/posh-git/), [GitHub](https://github.com/dahlbyk/posh-git)

##### Install

```
Install-Module Posh-Git
```

---
#### Join-Object

##### Description
Join-Object LINQ Edition.
Join data from two sets of objects based on a common value.
Aims to provide the exact functionality of [the original Join-Object](https://github.com/RamblingCookieMonster/PowerShell/blob/master/Join-Object.ps1) with much better performance and additional features. Initial testing shows at last 100 times faster. 
More information at GitHub.

[GitHub](https://github.com/ili101/Join-Object)

##### Install

```
Install-Module Join-Object
```
---
#### PSGSuite

##### Description
PSGSuite is a module wrapping Google's .NET SDKs to enable automation of G Suite admin operations, including Gmail and Drive interaction.
It is designed to work anywhere PowerShell runs and includes automated CI testing pre-deployment on Ubuntu images, both for the current stable release of PowerShell Core as well as the latest PowerShell Preview release via custom Docker container running Ubuntu 18.04. 
PSGSuite also works with free Gmail and non-admin G Suite accounts for easy Gmail, Drive and Calendar interaction without the need for a full G Suite admin account to use.

[Website & Documentation](https://psgsuite.io/), [GitHub](https://github.com/scrthq/PSGSuite)

##### Install

```
Install-Module PSGSuite
```

---
#### VaporShell

##### Description
VaporShell is a module that abstracts AWS CloudFormation template building in JSON/YAML into full, dynamic PowerShell code. It features input type validation to ensure that the resources you add to your template are correct before deploying, as well as full CloudFormation stack management by leveraging AWS' .NET SDK underneath the hood.
It is designed to work anywhere PowerShell runs and includes automated CI testing pre-deployment on Ubuntu images, both for the current stable release of PowerShell Core as well as the latest PowerShell Preview release via custom Docker container running Ubuntu 18.04.

[Website & Documentation](https://vaporshell.io/), [GitHub](https://github.com/scrthq/VaporShell)

##### Install

```
Install-Module VaporShell
```
---
#### PowerVRA

##### Description
PowervRA is a PowerShell module built on top of the services exposed by the vRealize Automation REST API.

Note: this module is a community project and is not in any way supported by VMware.

[Website & Documentation](https://jakkulabs.github.io/PowervRA/), [GitHub](https://github.com/jakkulabs/PowervRA)

##### Install

```
Install-Module -Name PowervRA
