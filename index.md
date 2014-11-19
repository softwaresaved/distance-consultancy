---
layout: page
root: .
title: Distance Developers Guide
---

The pages in this guide were written using Distance for Windows 6.2 release and the Distance virtual machine.

Locations on the Distance virtual machine are denoted as follows:

* %BASE% - C:\Application Development\Distance60
* %BASE%Extras - C:\Application Development\Distance60Extras

'nnnn' denotes the Distance version e.g. 6.

Developing Distance
-------------------

* [How to build R components](./developer/BuildR.html)
* [How to build Fortran components](./developer/BuildFortran.html)
* [How to build Visual Basic components](./developer/BuildVisualBasic.html)
* [How to build documents and images](./developer/BuildDocumentsImages.html)

* [Visual Basic coding conventions](./developer/VisualBasicCodingConventions.html)

* [How to set up a development environment](./developer/SetUpDevelopmentEnvironment.html)

Releasing Distance
------------------

* [How to release a minor version of Distance for Windows](./developer/ReleaseMinor.html)
* [Distance for Windows quick start setup](./developer/QuickStartSetup.html): summary of commands to install Distance for Windows, Distance R packages, R and RStudio which can help when testing Distance for Windows installers.

Architecture
------------

Distance is very modular - it is made up of a large number of semi-independent components written in a variety of programming languages. Distance consists of both components developed by the team and those developed by third-parties:

* [Installed Components](./developer/InstalledComponents.html) - Distance for Windows components and files. These are installed by the Distance for Windows installer.
* [Third-party Components](./developer/ThirdPartyComponents.html) - third-party components written by others and which are needed to build Distance for Windows and/or are shipped with Distance for Windows. 
* [Source Code and Binaries](./developer/SourceCodeAndBinaries.html) - Distance for Windows source code locations and the binaries, and other resources, built from it.

* [Distance for Windows and Fortran](./developer/ArchitectureFortran.html)
* [Distance for Windows and R](./developer/ArchitectureR.html)
* [Visual Basic Project Dependencies](./developer/VisualBasicProjectDependencies.html) - Dependencies of Distance's Visual Basic projects.

Miscellaneous
-------------

* [DLL Base Addresses](./developer/DllBaseAddresses.html) - DLL addresses used to date in Distance components.
* [File extensions](./developer/FileExtensions.html) - Commonly-occurring file extensions.
