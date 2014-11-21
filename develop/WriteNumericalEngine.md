---
layout: page
root: ..
title: How to write a new numerical engine
---

There follows an example of how to write a new numerical engine, called DHT, which uses R scripts to carry out the analysis.

---

## Create a new folder structure

* Create a new folder in %BASE%\Analysis Engines. e.g. C:\Application Development\Distance60\Analysis Engines\DHT
* Create four sub-folders: 
  - \Properties
  - \Details
  - \Engine
  - \NEngineInterface
* One way to do this is to copy these folders and their contents from a similar analysis engine that already exists. 
  - For example, in the case of DHT could copy the DSM engine as it also runs under R and is a small engine.
* In what follows, it is assumed you copied an existing project.

---

## Update Properties pages

Open the Properties project, \Properties\DHT.vbp:

* Rename Public UserControl that exposes the properties pages:
  - e.g. rename DSMProperties to DHTProperties
  - Save as DHTProperties.ctl
  - Delete the old .ctl file, using Windows Explorer, under the Main Control sub-folder.
* Rename the resource file:
  - Outside of VB, rename the resource file in the Resource File sub-folder e.g. rename D6DSM.res to D6DHT.res
  - Inside VB look under related documents in the list of files attached to the project, remove the old .res file and add the new one.
* Rename the project:
  - e.g. rename D6DSMPrp to D6DHTPrp
  - Save the project file e.g. D6DSMPrp.vbp to D6DHTPrp.vbp
* Rename meta-data:
  - Select Project => PROJECT_NAME properties
  - Rename the Project Description
  - Select Make tab
  - Set version number (revision 1)
  - Set Application title e.g. D6DHTPrp
  - Check the various parts of the version information are OK e.g. File Description, Product Name, Copyright, etc
  - Select Compile tab
  - Pick a new base address and enter it here - see [DLL Base Addresses](../reference/DllBaseAddresses.html) and pick an unused one
  - Select Component tab
  - Check no compatibility
* Compile under the new name:
  - Select File => Make
  - Make sure you change the library name e.g. D6DSMPrp.ocx to D6DHTPrp.ocx
  - Put a copy of the .ocx into %BASE%\Compatibility
  - Delete the old .vbp e.g. D6DSMPrp.vbp and related files (.lib, .oca, ocx, etc)
  - Select Project => PROJECT NAME properties, Component tab
  - Set compatibility to project compatibility
  - Set compatibility file to the .ocx in %BASE%\Compatibility
* Now you can make any changes you want to the properties pages themselves

Edit %BASE%\Database Engine\DistIni.Setup.mdb:

* Select ProjectSettingsMemo
  - Section AnalysisEngine Key [new engine name] Setting
    - Copy and edit what's there!
    - Note that order determines the order the engines are displayed in the Model definition drop down
    -  PrpLicense is obtained using the project %BASE%\Misc\GenerateLicenseKey - you need to add the name of the new control (e.g., D6DHTPrp.DHTProperties) and then run the project, choose that control, click on GenerateKey and copy the ken it generates.
  - Section AnalysisEngineDefaultDefnition Key [new engine name] Setting
    - Add text that gives the default definition for this engine in distance command language.  At the least it should be Engine=[engine name]; -- e.g. Engine=DHT;
* Select ProjectSettingsBoolean
  - Section AnalysisEngine[engine name] Key RequiresGeoObjects
    - Setting: put -1 if it needs access to the MapObjects functionality, 0 (false) if not.
  - Section AnalysisEngine[engine name] Key RunInProcess
    - Setting: Put -1 if it needs to run in process (generally GIS stuff only), 0 (false) if it can run in a separate process (generally, the other engines).
* Copy over to %BASE%\Database Engine\DistIni.mdb so you can run the Properties tester.

Get the properties project tester goig:

* Open the vpg in %BASE%\Analysis Engines\[engine name]\Properties\Tester
* Save it and the associated tester vbp under more appropriate names - e.g., D6DSMTester.vpg becomes D6DHTTester.vbp, etc.
* Remove the old properties control from the Form1 in the tester project
* Remove the old Prp project (e.g., D6DSMPrp.vbp) from the project group
* Add the  new Prp project (e.g., D6DHTPrp.vbp) (File | Add project...)
* Put the new properties control onto the tester form.

---

## Update Engine

* Create a "hello world" R function in a script called "dht.test.r"
  - The function can be very simple at the outset e.g. a "hello world" R function.
* Put this script into \NEngineInterface
* The NEngineInterface will source this code.

---

## Update NEngineInterface

Following a process similar to Properties above:

* Open the copied project
* Rename anything with the old analysis prefix/suffix to DHT
* Rename the project
* Go through the project properties
* Compile the project with no compatibility
* Copy the DLL to the \Compatibility folder
* Compile again with project compatibility
* Fix the Tester project
* Test:
  - Create a new project
  - Use the new properties pages to specify a new analysis with the new analysis engine
  - Run the new analysis engine and see if it runs OK
  - Look at the results in the .dst file - we can't actually see them yet as the details pages aren't done, on which note...

---

## Update Details pages

Following a process similar to Properties above:

* Open the copied project
* Rename anything with the old analysis prefix/suffix to DHT e.g. global variables in modGlobal, UserControl names etc.
* Rename the project
* Go through the project properties
* Compile the project with no compatibility
* Copy the OCX to the \Compatibility folder
* Compile again with project compatibility
* Create a new License key for both the log and results pages and put these into %BASE%\Database Engine\DistIni.Setup.mdb
* Test:
  - Create a new project
  - Use the new properties pages to specify a new analysis with the new analysis engine
  - Run the new analysis engine and see if it runs OK
  - See if the results are displayed OK

---

## Update Documentation

* Update the developer's guide to document the new components, Visual Basic projects, R scripts, DLLs and OCXs.
  - Pick a new base address and enter it here - see [DLL Base Addresses](../reference/DllBaseAddresses.html) and pick an unused one
