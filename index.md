---
layout: page
root: .
title: Distance Developers Guide
---

## Introduction

Welcome to the Distance developer's guide.

## Notations

Some compilers and other software store file locations using an absolute path, rather than a relative path. This means that, when moving Distance source code, project files etc. from one machine to another, either it must be placed in the same folder on the new machine or all the relevant source code, project files etc. must be updated. As the former is easier than the latter, we have converged upon the following locations for Distance's files where "nnnn" is the major version number:

| Location | Example | Short-hand in this guide |
| -------- | ------- | ------------------------ |
| C:\Application Development\Distancennnn0 | C:\Application Development\Distance60 | %BASE% |
| C:\Application Development\Distancennnn0Extras | C:\Application Development\Distance60Extras | %BASE%Extras |

The pages in this guide were written using Distance for Windows 6.2 release and the Distance virtual machine.

## Developing Distance

Getting started:

* [Required knowledge](./develop/RequiredKnowledge.html)
* [How to set up a development environment](./develop/SetUpDevelopmentEnvironment.html)

Source code access and management:

* [How to get MCDS Fortran source code](./develop/McdsSourceCode.html)
* [How to get DSM and MRDS R source code](./develop/DsmMrdsSourceCode.html)

Day-to-day development:

* [How to build R components](./develop/BuildR.html)
* [How to build Fortran components](./develop/BuildFortran.html)
* [How to build Visual Basic components](./develop/BuildVisualBasic.html)
* [How to register components and generate licence keys](./develop/RegisterGenerateLicenceKey.html)
* [How to build documents and images](./develop/BuildDocumentsImages.html)

Coding conventions:

* [Visual Basic coding conventions](./conventions/VisualBasicCodingConventions.html)

Issue and bug management:

* [Bugzilla](http://www.ruwpa.st-and.ac.uk/distance/bugzilla)
* [distance-sampling](https://groups.google.com/forum/#!forum/distance-sampling) GoogleGroup archive.
* [distance-sampling](http://www.jiscmail.ac.uk/lists/distance-sampling.html) JISCMail archive, for discussions up to June 2014.
* Known problems, restrictions and workarounds for specific releases:
  - [Distance 6.2 and R](http://distancesampling.org/Distance/old-versions/d62-r-install-details.html)
  - [Distance 6.0 Release 2](http://distancesampling.org/Distance/old-versions/d60knownproblems.html).
  - [Distance 5.0 Release 2](http://distancesampling.org/Distance/old-versions/d50knownproblems.html).
  - [Distance 4.1 Release 2](http://distancesampling.org/Distance/old-versions/d41knownproblems.html).
  - [Distance 3.5 Release 6](http://distancesampling.org/Distance/old-versions/distanceknownproblems.html).



## Releasing Distance

* [How to release a minor version of Distance for Windows](./develop/ReleaseMinor.html)
* [Distance for Windows quick start setup](./develop/QuickStartSetup.html): summary of commands to install Distance for Windows, Distance R packages, R and RStudio which can help when testing Distance for Windows installers.
* [How to release MCDS on SourceForge](./develop/ReleaseMcds.html)

## Architecture

Components:

* [Component diagrams](./architecture/ComponentDiagrams.html): diagrams of analysis and GUI components and their dependencies.
* [Code components](./architecture/CodeComponents.html): code-based components.
* [Non-code components](./architecture/NonCodeComponents.html): non-code components.
* [Third-party components](./architecture/ThirdPartyComponents.html): third-party components written by others and which are needed to build Distance and/or are shipped with Distance.

Folder structures:

* [Source code and binaries](./architecture/SourceCodeAndBinaries.html): folder structure of sources of code and non-code components and scripts.
* [Release structure](./architecture/ReleaseStructure.html): Distance for Windows folder and file structure.

Dependencies:

* [Source code and binaries](./architecture/SourceCodeAndBinaries.html): summary of the sources of code and non-code components that make up Distance, and the tools used to create the Distance for Windows components. 
* [Visual Basic project dependencies](./architecture/VisualBasicProjectDependencies.html): Visual Basic project inter-dependencies.

Interfaces:

* [Distance for Windows and Fortran](./architecture/ArchitectureFortran.html): interface between Visual Basic and Fortran (for CDS and MCDS)
* [Distance for Windows and R](./architecture/ArchitectureR.html): interface between Visual Basic and R (for DSM and MRDS)

## Managing infrastructure

* [How to back up project resources](./develop/BackUpResources.html)

## Reference

* [DLL base addresses](./reference/DllBaseAddresses.html): DLL addresses used to date in Distance components.
* [File extensions](./reference/FileExtensions.html): Commonly-occurring file extensions.
* [Site map](./site-map.html)
