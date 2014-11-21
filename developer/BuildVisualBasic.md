---
layout: page
root: ..
title: How to build Visual Basic components
---

## Find out tool versions

Microsoft Visual Basic:

* Help => About Microsoft Visual Basic...
* Microsoft Visual Basic 6.0 (SP6) For 32-bit Windows Development

---

## View Visual Basic project dependencies

To build a project requires all its pre-requisite projects to have been built. See:

* [Visual Basic Project Dependencies](./VisualBasicProjectDependencies.html)
* [Visual Basic projects list]({{ site.distance_vmscripts }}/vbprojectlist.txt) - an ordered project list that respects the dependencies.

To see project dependencies within Visual Basic:

* To see dependencies:
  - Select Project => References...
  - All possible dependencies are shown (and more can be added with Browse...)
  - Project-specific dependencies are those that are checked

* To see component dependencies:
  - Select Project => Components...
  - All possible dependencies are shown (and more can be added with Browse...)
  - Project-specific dependencies are those that are checked
  - Beware! Any component dependencies that have not been built will not be shown checked - Visual Studio will warn you about these when the project is opened

To see project dependencies within a text editor:

* Right-click vbp file name
* Select Open With => Choose Program...
* Double-click WordPad
* Dependencies and component dependencies are listed as Reference, Object and Module entries e.g:

<p/>

      Reference=*\G{...}#2.0#0#..\..\..\..\WINDOWS\system32\stdole2.tlb#OLE Automation
      Reference=*\G{...}#2.0#0#..\..\Database Engine\D6DbEng.dll#Distance 6 Database Engine
      Reference=*\G{...}#1.0#0#..\..\Utilities\D6Util.dll#Distance 6 Utilities - Shared enumerations, properties and methods

      Object={...}#1.0#0; Vsflex7d.ocx
      Object={...}#2.0#0; Actbar2.ocx
      Object={...}#2.0#0; SPLITTER.OCX
      Object={...}#2.0#0; mo20.ocx
      Object={...}#1.2#0; comdlg32.ocx
      Object={...}#1.0#0; LLine3.ocx
      Object={...}#2.0#0; mscomct2.ocx
      Object={...}#1.0#0; CSDesc3.ocx
      Object={...}#1.0#0; D6Legend.ocx

      Module=CModHelp; ..\..\Utilities\Help\distance.b

---

## Build single Visual Basic project

To build a project within the VB GUI:

* Open project in Visuual Basic:
  - Double-click vbp file in project folder e.g. %BASE%\Map\Legend\D6Legend.vbp
* Build:
  - Select File => Make PROJECT e.g. Make D6Legend.ocx...

To build a project from a command prompt:

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into %BASE%:

<p/>

    chdir %BASE%\

* Build the project:

<p/>

    start /wait "VB6" "C:\program files\microsoft visual studio\vb98\vb6.exe" /make "C:\Application Development\Distance60\PROJECT.vbp"

  - For example:

<p/>

    start /wait "VB6" "C:\program files\microsoft visual studio\vb98\vb6.exe" /make "C:\Application Development\Distance60\Map\Legend\D6Legend.vbp

---

## Build all Visual Basic projects

* Download the following files into %BASE%\:
  - [build_vb_projects.bat]({{ site.distance_vmscripts }}/build_vb_projects.bat)
  - [set_config.bat]({{ site.distance_vmscripts }}/set_config.bat)
  - [vbprojectlist.txt]({{ site.distance_vmscripts }}/vbprojectlist.txt)
* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into %BASE%\

<p/>

    chdir %BASE%

* Run the build script:

<p/>

    build_vb_projects.bat

---

## Remove all Visual Basic binaries

To remove all ocx, dll and exe files for a complete rebuild:

* Download the following files into %BASE%\:
  - [delete_vb_binaries.bat]({{ site.distance_vmscripts }}/delete_vb_binaries.bat)
  - [set_config.bat]({{ site.distance_vmscripts }}/set_config.bat)
  - [vbbinarylist.txt]({{ site.distance_vmscripts }}/vbbinarylist.txt)
* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into %BASE%\

<p/>

    chdir %BASE%

* Run the delete script:

<p/>

    delete_vb_binaries.bat

---

## Set DLL base address

The default DLL base address is &H11000000. This will cause lots of memory re-allocation. Components will load faster if a random number between this and &H80000000 is chosen. It is recommended that you choose:

* A 64K boundary (i.e. the rightmost four digits of the address are 0000) is chosen.
* Ensure an even spread of components out across the addresses.

To set the DLL base address:

* Open project in Visual Basic:
  - Double-click vbp file in project folder e.g. %BASE%\Map\Legend\D6Legend.vbp
* Select Project => PROJECT Properties... e.g. D6Legend Properties...
* Click Version tab

[DLL Base Addresses](./DllBaseAddresses.html) provides a list of addresses used to date. If you add a new component or change an address, remember to update this list.

---

## View binary (dll, ocx, exe) meta-data

* Right-click file and select Properties
* Click Version tab

---

## Update binary (dll, ocx, exe) meta-data

* Open project in Visual Basic:
  - Double-click vbp file in project folder e.g. %BASE%\Map\Legend\D6Legend.vbp
* Select Project => PROJECT Properties... e.g. D6Legend Properties...

To update project name and description:

* Click General tab
* Enter Project Name: e.g. D6Legend
* Enter Project Description: e.g. Distance 6 Mapper Legend control

To update application name, used in Task Manager, and icon (for exe files):

* Click Make tab
* Enter Application, Title: e.g. Distance 6.2
* Select Application, Icon

To update version number:

* Click Make tab
* Enter Version Number, Major: e.g. 6
* Enter Version Number, Minor: e.g. 2
* Version Number, Revision is automatically incremented if Auto Increment is checked

To update ownership, copyright etc:

* Click Make tab
* Select Type: and enter Value: to set specific values e.g.
  - Company Name: Research Unit for Wildlife Population Assessment, University of St Andrews
  - File Description: Distance 6.2 Executable
  - Legal Copyright: Copyright (c) 1998-2013 RUWPA
  - Product Name: Distance 6.2

---

## View binary (dll, ocx, exe) meta-data

* Right-click file and select Properties
* Click Version tab

---

## View version compatibility

Visual Basic's compatibility mode allows for checks to be done to ensure that libraries or components do not change their interfaces in a way that can break compatibility with older versions.

For Distance, original versions of dll and ocx files are stored within %BASE%\Compatibility folder stores all the original versions

To see the original version of a binary that is used by a project:

* Open project in Visual Basic:
  - Double-click vbp file in project folder e.g. %BASE%\Map\Legend\D6Legend.vbp
* Select Project => PROJECT Properties... e.g. D6Legend Properties...
* Click Component tab
* If Version Compatibility, Project Compatibility is enabled for the project then there will be an associated link e.g. ..\..\Compatibility\D6Legend.ocx
