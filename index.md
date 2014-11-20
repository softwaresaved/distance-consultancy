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

Source code access and management:

* [MCDS Fortran source code](./developer/McdsSourceCode.html)
* [DSM and MRDS R source code](./developer/DsmMrdsSourceCode.html)

Day-to-day development:

* [How to set up a development environment](./developer/SetUpDevelopmentEnvironment.html)
* [How to build R components](./developer/BuildR.html)
* [How to build Fortran components](./developer/BuildFortran.html)
* [How to build Visual Basic components](./developer/BuildVisualBasic.html)
* [How to build documents and images](./developer/BuildDocumentsImages.html)

Project coding conventions:

* [Visual Basic coding conventions](./developer/VisualBasicCodingConventions.html)

Releasing Distance
------------------

* [How to release a minor version of Distance for Windows](./developer/ReleaseMinor.html)
* [Distance for Windows quick start setup](./developer/QuickStartSetup.html): summary of commands to install Distance for Windows, Distance R packages, R and RStudio which can help when testing Distance for Windows installers.

Architecture
------------

Components:

* [Code Components](./developer/CodeComponents.html): code-based components.
* [Non-code Components](./developer/NonCodeComponents.html): non-code components.
* [Third-party Components](./developer/ThirdPartyComponents.html): third-party components written by others and which are needed to build Distance and/or are shipped with Distance.

Directory structures:

* [Source Code and Binaries](./developer/SourceCodeAndBinaries.html): expected source code, document and other locations and the binaries, and other resources, built from these.
* [Release Structure](./developer/ReleaseStructure.html): Distance for Windows directory and file structure.

Dependencies:

* [Source Code and Binaries](./developer/SourceCodeAndBinaries.html): documents relationship between source code, documents, images and binaries, PDFs and compiled HTML help, and how the latter relates to the former.
* [Visual Basic Project Dependencies](./developer/VisualBasicProjectDependencies.html): Visual Basic project inter-dependencies.

Miscellaneous:

* [DLL Base Addresses](./developer/DllBaseAddresses.html) - DLL addresses used to date in Distance components.
* [File extensions](./developer/FileExtensions.html) - Commonly-occurring file extensions.

Interfaces:

* [Distance for Windows and Fortran](./developer/ArchitectureFortran.html): interface between Visual Basic and Fortran (for MCDS)
* [Distance for Windows and R](./developer/ArchitectureR.html): interface between Visual Basic and R (for DSM and MRDS)
