---
layout: page
root: .
title: Distance Developers Guide
---

Welcome to the Distance developer's guide.

Introduction
------------

Some compilers and other software store file locations using an absolute path, rather than a relative path. This means that, when moving Distance source code, project files etc. from one machine to another, either it must be placed in the same folder on the new machine or all the relevant source code, project files etc. must be updated. As the former is easier than the latter, we have converged upon the following locations for Distance's files where "nnnn" is the major version number:

| Location | Example | Short-hand in this guide |
| -------- | ------- | ------------------------ |
| C:\Application Development\Distancennnn0 | C:\Application Development\Distance60 | %BASE% |
| C:\Application Development\Distancennnn0Extras | C:\Application Development\Distance60Extras | %BASE%Extras |

The pages in this guide were written using Distance for Windows 6.2 release and the Distance virtual machine.

Developing Distance
-------------------

* [MCDS Fortran source code](./developer/McdsSourceCode.html)
* [DSM and MRDS R source code](./developer/DsmMrdsSourceCode.html)

* [How to set up a development environment](./developer/SetUpDevelopmentEnvironment.html)
* [How to build R components](./developer/BuildR.html)
* [How to build Fortran components](./developer/BuildFortran.html)
* [How to build Visual Basic components](./developer/BuildVisualBasic.html)
* [How to build documents and images](./developer/BuildDocumentsImages.html)

* [Visual Basic coding conventions](./developer/VisualBasicCodingConventions.html)

Releasing Distance
------------------

* [How to release a minor version of Distance for Windows](./developer/ReleaseMinor.html)
* [Distance for Windows quick start setup](./developer/QuickStartSetup.html): summary of commands to install Distance for Windows, Distance R packages, R and RStudio which can help when testing Distance for Windows installers.

Architecture
------------

Distance components:

* [Code Components](./developer/CodeComponents.html) - Code-based components.
* [Non-code Components](./developer/NonCodeComponents.html) - Non-code components.
* [Third-party Components](./developer/ThirdPartyComponents.html) - third-party components written by others and which are needed to build Distance for Windows and/or are shipped with Distance for Windows. 

Distance source code:

* [Source Code and Binaries](./developer/SourceCodeAndBinaries.html) - Distance for Windows source code locations and the binaries, and other resources, built from it.

Distance release:

* [Release Structure](./developer/ReleaseStructure.html) - Distance for Windows release structure after installation.

Architecture:

* [Distance for Windows and Fortran](./developer/ArchitectureFortran.html)
* [Distance for Windows and R](./developer/ArchitectureR.html)
* [Visual Basic Project Dependencies](./developer/VisualBasicProjectDependencies.html) - Dependencies of Distance's Visual Basic projects.

Miscellaneous
-------------

* [DLL Base Addresses](./developer/DllBaseAddresses.html) - DLL addresses used to date in Distance components.
* [File extensions](./developer/FileExtensions.html) - Commonly-occurring file extensions.
