---
layout: page
root: ..
title: Set up development environment
---

## Introduction

**Important!** Do not do development and test Distance setup packages or install Distance releases on the same machine. This results in the Distance executable and support components being in two places on the computer, which may get confusing!

The tools you need are described in their recommended order of installation.

---

## Where to get the development tools

Distance development tools are available in three locations:

* CDs which are held by Len or David
  - Registration codes are available from Len or David
  - These are only available to Distance project members
* Distance for Windows virtual machine, %BASE%Extras\DistanceDevCD\
  - Relative file paths on this page are relative to this directory
  - These are only available to Distance project members
* Downloads from web sites

---

## Distance development virtual machine

A complete development environment is on the Distance Windows XP virtual machine available from Len or Dave and which runs under VMWare Player.

This is only available to Distance project members.

---

## Microsoft Office

### Microsoft Access 97 (optional)

* Edit .mdb and .dst files e.g. Distance databases, while DAO 3.0 continues to be used within Distance

Install:

* Install Access only from Office 97 Pro CD
* This needs to be done before a newer version of Microsoft Office (e.g. 2000 or XP) is installed

### Microsoft Office XP Pro

* Excel for editing .xls files e.g. Distance sample project raw data
* Word for editing .doc files e.g. Distance user's guide and built-in help
* Access for editing .mdb files e.g. Distance databases
* PowerPoint for editing .ppt slides and converting .ppt slides to Windows Metafile .wmf files

Install:

* Install from Office XP Pro CD
  - Do **not** upgrade Access 97 when asked
* Add critical updates
  - Microsoft Word service packs need to be applied before using Doc-To-Help

---

## Microsoft Visual Basic and related tools

### Microsoft Visual Basic 5

* Microsoft common controls and Jet 3.5 libraries

Install:

* Install from VB5 CD
* Apply service pack 3 by running VB\VB 5 Service Pack 3\vbsp3.exe

### Microsoft Visual Basic 6

* Edit .vbp projects 
* Build .dll, .ocx and .exe binaries e.g. Distance libraries and GUI

Install:

* Install from Visual Studio 6 CD
* Apply service pack 6 by running VB\VB 6 Service Pack 6\Vs6sp6.exe
* You will be prompted to install the Microsoft Development Network documentation (see below) at the end of the Visual Studio 6 install process which you may want to do

### Microsoft Jet 3.5

* Database access and management e.g. Distance databases

Install:

* Provided as part of Visual Basic 5 above
* Apply service pack 3 by running VB\Jet\Jet35sp3.exe

### Microsoft Development Network (MSDN) documentation (optional)

* Visual Basic 6 documentation

Install:

* Install from CD
* Load the whole VB documentation onto your hard drive otherwise it will prompt you to insert the CD each time you call up help

### Microsoft Windows scripting 5.6.0.8225

* Utilities e.g. regular expression searching, easy Windows file system manipulation 
* Later versions from Microsoft may also be usable

Install:

* See VB\Scripting\readme.txt
* Run XP installer VB\Scripting\scripten.exe

---

## Third-party Visual Basic components and other tools

For the uses of these components, and the libraries specifically used, see [Third party components](../architecture/ThirdPartyComponents.html).

### ComponentOne VideoSoft VSFlex 7.0.1.187

Install:

* Install version 3 by running VSFlex\V3\SETUP.EXE
* Register: 
  - Run VSFlex\V3\regcd.EXE
  - Enter registration code from VSFlex\V3\Regnum.txt
* Install version 7 by running VSFlex\V7\SETUP.EXE
* Register: 
  - Run VSFlex\V7\regcd.EXE
  - Enter registration code from VSFlex\V7\CSReadMe.txt
* Upgrade to .187:
  - Unzip VSFlex\V7\vsflex7_7.0.1.187.zip
  - Copy all but readme.txt into C:\WINDOWS\system32 (or its equivalent)

### Common Controls Replacement Project Browse Dialog Server 0.2.0.12

Install:

* Unzip CCRP\ccrpbds-b2.zip to C:\Program Files\CCRP\ccrpbds6-bb2
* Register ccrpbds6.dll
  - See [How to register components and generate licence keys](./RegisterGenerateLicenceKey.html)
  - If there are problems, see CCRP\readme.txt

### Data Dynamics ActiveBar 2.5.2.121

Install:

* Install version 1 by running ActiveBar\barsetup.exe
* Enter registration code from ActiveBar\barsetupReadMe.txt
* Upgrade to version 2 by running ActiveBar\AB2Upgrade.exe
* Enter registration code from ActiveBar\ab2SReadMe.txt
* Upgrade to .5.2.121 by running ActiveBar\AB2 HotFix 2.5.2.121.exe

### Desaware Spyworks 6.3

Install:

* Run SpyWorks63\setup.exe
* When prompted, select only the 32-bit files (the NT services demo is not needed)

### ESRI MapObjects 2.3

Install:

* Install from MapObjects CD
* Copy MapObjects\Microsoft files from CD to C:\Program Files\MapObjects2\Microsoft

### Farpoint Tabpro 3.1.22

Install:

* Install version 2 by running TabPro\V2\setup.exe
* Enter registration code from TabPro\V2\CSReadMe.txt
* Install version 3 by running TabPro\V3\setup.EXE
* Enter registration code from TabPro\V3\CSReadMe.txt
* Upgrade to .1.22 by running TabPro\V3Sp\setup.EXE
  - When prompted, choose upgrade

### Polar Software PolarZIP 5.0.12.0

Install:

* Run PolarZip\polarzip50release.exe

### Sheridan Software ActiveThreed 2.04

Install:

* Run ActiveThreed\Setup.EXE
* When prompted, select C:\Program Files\ActiveThreed as the install directory
  - **Not** the default C:\Sheridan\ActiveThreed
* Enter registration code from ActiveThreed\readme.txt

### Zlib zip

Install:

* Copy ZLib\DstZip.dll to C:\WINDOWS\system32

---

## Libraries

The following libraries are installed as a side-effect of the foregoing:

* Microsoft C runtime library (MSVCP60.dll, MSVCRT.DLL)
* Microsoft DAO (DAO2535.tlb, DAO350.dll)
* Microsoft Jet 3.51 (MSJET35.DLL, MSJINT35.DLL, MSJTER35.dll)
* Microsoft Jet 3.51 IISAM drivers (MSEXCL35.DLL, MSRD2X35.dll, MSTEXT35.DLL)
* Microsoft Windows Script (scrrun.dll, stdole2.tlb, vbscript.dll)
* Microsoft Visual Basic 5 and 6 (COMCTL32.OCX, comdlg32.ocx, MSChrt20.ocx, MSComCt2.ocx, RichTx32.ocx, VB5DB.dll)

These are required to build Distance as shown in [Source code and binaries](../architecture/SourceCodeAndBinaries.html).

---

## Other tools for Visual Basic-related development

### Common Controls Replacement Project Context menu Register-Unregister (optional)

* Register and unregister components using the right click context menu in Windows Explorer.

Install:

* Run CCRP\ocxdllreg.reg

### Common Controls Replacement Project FindAll (optional)

* Adds to Visual Basic 6 the ability to find a string in all files in a folder.

Install:

* Copy CCRP\FindAll.dll to C:\Program Files\CCRP\FindAll\
  - Create the directory if it does not exist
* Register FindAll.dll
  - See [How to register components and generate licence keys](./RegisterGenerateLicenceKey.html)
  - If there are problems, see CCRP\readme.txt
* Edit C:\Windows\vbaddin.ini
  -Add the line `FindAll.Connect=3`

### Microsoft Access 97 (optional)

* Edit .mdb and .dst files e.g. Distance databases

Install:

* See [Microsoft Office](#microsoft-office) above

---

## Documentation and image tools

### Microsoft Word 2003

* Edit .doc documents e.g. Distance user's guide and built-in help
* **Not** to be used to edit .rtf files

Install:

* See [Microsoft Office](#microsoft-office) above

### Microsoft WordPad

* Edit .rtf files e.g. Distance built-in text

Install:

* Comes with Microsoft Windows

### Axialis IconWorkshop 6 (optional)

* Edit .ico icons

Install:

* Run IconWorkshop\IconWorkshop-Home-6.3.3.0-Eng.exe
* Enter registration code
* Start IconWorkshop by selecting Start => All Programs => Axialis Software => Axialis IconWorkshop
* Select Help => Check for Updates...
* Install updates

### Microsoft PowerPoint

* Edit .ppt slides
* Convert .ppt slides to Windows Metafile .wmf files

Install:

* See [Microsoft Office](#microsoft-office) above

### Microsoft PhotoDraw

* Edit Microsoft Image Composer .mix files e.g. Distance splash screen
* Convert .mix to .jpg
* Free with Microsoft Office 2000 Premium
* **Note** Has been known to screw up the image handling so it is recommended that you don't install this on your machine, but install it within a VMWare virtual machine

Install:

* Install from CD

### Windows HTML Help Workshop

* Build .chm files e.g. Distance built-in help

Install:

* Download from [Microsoft HTML Help Downloads](http://msdn.microsoft.com/en-us/library/windows/desktop/ms669985(v=vs.85).aspx)

### Doc-To-Help 2006 v3 build 3.0.313

* Edit .d2h projects
* Build .doc, .chm and .bas documents e.g. Distance user's guide and built-in help

Install:

* Uninstall any previous version:
  - Start Doc-To-Help by selecting Start => All Programs => ComponentOne Doc-To-Help => Doc-To-Help
  - Select Help => Deactivate...
    - If you do not see this option then uninstall Doc-To-Help directly
  - After deactivation is confirmed, uninstall all versions of Doc-To-Help by selecting Start => All Programs => ComponentOne Doc-To-Help => Uninstall Doc-To-Help
  - Clear the registry:
    - Select Start => Run
    - Type regedit and press enter
    - Navigate to the key HKEY_LOCAL_MACHINE\SOFTWARE\COMPONENTONE\
    - Delete any Doc-To-Help sub-folders
    - Navigate to the key HKEY_CURRENT_USER\SOFTWARE\COMPONENTONE\
    - Delete any Doc-To-Help sub-folders
    - Reboot
* Check whether you have any Winword.exe or mail program (e.g. Outlook) opened
  - If so, then close them using the Task Manager
* Install .NET 1.1 by running DocToHelp\dotnetfx.1.1.exe
* Install .NET 2.0 by running DocToHelp\dotnetfx.2.0.exe
* Install MDAC 2.8 by running DocToHelp\MDAC_TYP.2.8SP1.EXE
  - Later versions from Microsoft may also be usable
* Install XML parser 3 by running DocToHelp\msxml3usa.msi
* Install Doc-To-Help 2006 by running DocToHelp\C1D2H2006Build313.EXE
  - Enter registration code
  - If Doc-To-Help says that more than 3 copies are activated then contact Len or Dave
* Customize templates before compiling 
  - See %BASE%Extras\External Documentation\Documents\Template Changes.txt

### Adobe Acrobat

* Convert .doc into .pdf e.g. Distance user's guide

Install:

* Install from CD

---

## Release build tools

### Wise Installation System 9.02

* Edit .wse projects
* Build installer .exe e.g. Distance installer

Install:

* Run Wise\Wise902.exe
* Enter registration code
* Install VB6SP6 runtime:
  - Start Wise by selecting Start => All Programs => Wise Solutions => Wise Installation System
  - Select Help => Download Runtimes
  - Click Next 
  - Under Available runtimes, check Visual Basic 6 service pack 6
  - Click Next 
  - Click Finish

### WinZip and WinZip Self Extractor

* Bundle installer .exe and .rtf into .zip
* Convert .zip to self-extracting .exe e.g. Distance self-extracting installer

Install:

* Install WinZip by running WinZip\WinZip100.exe
* Enter registration code from WinZip\winzip10serial_number.txt  
* Install self-extractor by running Winzip\winzipse22.exe
* Enter registration code from WinZip\winzipseserial_number.txt  

---

## Fortran tools

* See [Set up Fortran development environment](./SetUpDevelopmentFortran.html).

---

## R tools

* See [Set up R development environment](./SetUpDevelopmentR.html).

---

## General tools

### VMWare Player (optional)

* [VMware Player](http://www.vmware.com/uk/products/player)
* Create and run virtual machines e.g. check Distance release candidates
* VMWare proprietary license

Install:

* The above page comments that "Player Pro is licensed for commercial use and is enabled to run restricted virtual machines. If you simply want to learn about virtual machines or run virtual machines at home you can always use VMware Player for free" which includes a link to free [VMWare Player](https://my.vmware.com/web/vmware/free#desktop_end_user_computing/vmware_player/6_0) versions.
* OR
* Get copy from Len

### TextPad (optional)

* [TextPad](https://www.textpad.com/)
* Edit .rtf and .txt files e.g. Distance built-in text
* Proprietary license (single user license - GBP16.50)

Install:

* Get copy from Len

### ESRI ArcGIS (optional)

* View and edit ESRI shapefiles from geographic projects
* Version 3 or above

Install:

* Install from CD

### Microsoft Excel (optional)

* Edit .xls files e.g. Distance sample project raw data

Install:

* See [Microsoft Office](#microsoft-office) above
