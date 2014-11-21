---
layout: page
root: ..
title: How to write a new numerical engine
---

There follows an example of how to write a new numerical engine, called DHT, which uses R scripts to carry out analyses.

---

## Create a new folder structure

* Create a new folder in %BASE%\Analysis Engines\ e.g. DHT\
* Create four sub-folders: 
  - Properties\
  - Details\
  - Engine\
  - NEngineInterface\
* One way to do this is to copy these folders and their contents from a similar analysis engine that already exists. 
  - For example, in the case of DHT we could copy DSM\ as the DSM engine also runs under R and is a small engine.
* In what follows, it is assumed you copied an existing project.

---

## Update Properties

* Double-click Properties\DnnnnDSMPrp.vbp

### Rename control

* In Project browser, double-click DSMProperties (DSMProperties.ctl)
* Update Properties (Name): DHTProperties
* Select File => Save DSMProperties.ctl As...
* Save as Main Control\DHTProperties.ctl
* Using Windows Explorer, delete the old Main Control\DSMProperties.* files

### Rename resource

* Using Windows Explorer, rename Resource File\DnnnnDSMPrp.res to DnnnnDHTPrp.res
* In Project browser, double-click Related Documents
* Right-click on (DnnnnDSMPrp.res) and select Remove DnnnnDSMPrp.res
* Right click and select Add => Resource File
* Select DnnnnDHT.res

### Rename project

* Select File => Save Project As...
* Save as DnnnnDHTPrp.vbp
* Using Windows Explorer, delete the old DnnnnDSMPrp.* files

### Update meta-data

* Select Project => DnnnnDHTPrp Properties...
* Update Project Name: DnnnnDHTPrp
* Update Project Description
* Select Make tab
* Update Revision: 1
* Update Application title: DnnnnDHTPrp
* Update Type: information:
  - Company Name
  - File Description
  - Legal Copyright
  - Product Name
* Select Compile tab
* Enter DLL Base Address: see [DLL Base Addresses](../reference/DllBaseAddresses.html) and pick an unused one
* Select Component tab
* Under Version Compatibility, select No compatibility
* Click OK

### Compile project

* Select File => Make DnnnnDSMPrp.ocx...
* Enter File name: DnnnnDHTPrp.ocx
* Click OK

### Compile project under compatibility mode

* Using Windows Explorer, copy DnnnnDHTPrp.ocx to %BASE%\Compatibility
* Select Project => DnnnnDHTPrp Properties...
* Select Component tab
* Under Version Compatibility, select Project compatibility
* Select ..\..\..\Compatibility\DnnnnDHTPrp.ocx
* Click OK
* Recompile project as above.

### Register component and generate licence key

* [Register component with registry](TODO)
* [Generate licence key for component](TODO)

### Update database

* Double-click %BASE%\Database Engine\DistIni.mdb
* Double-click ProjectSettingsMemo
* Add new AnalysisEngine record:

| Section | Key | Setting |
| ------- | --- | ------- |
| AnalysisEngine| DHT | Description=Density surface modelling;Order=4;PrpProgID=DnnnnDHTPrp.DHTProperties;PrpLicense=ihgisidhihkfgglilfsgid;EngIntProgID=DnnnnDHTNEI.DHTNEngineInterface;LogProgID=DnnnnDHTDet.DHTLog;LogLicense=okwkwpuiojkpsi;ResProgID=DnnnnDHTDet.DHTResults;ResLicense=ghjhsjihkhhjoktllf;PackageName=dht;SupportFileName=dht.support.r; |

* Order of Analysis Engine entries determines the order the engines are displayed in the Model Definition drop-down list
* Add new AnalysisEngineDefaultDefinition record:
  - Add text that gives the default definition for this engine in the Distance Command Language
  -  At the least it should be Engine=[engine name];

| Section | Key | Setting |
| ------- | --- | ------- |
| AnalysisEngineDefaultDefinition | DHT | Engine=DHT; |

* Double-click ProjectSettingsBoolean
* Add new AnalysisEngineDHT records:

| Section | Key | Setting |
| ------- | --- | ------- |
| AnalysisEngineDHT | RequiresGeoObjects | -1 if engine needs MapObjects functionality, 0 (false) otherwise |
| AnalysisEngineDHT | RunInProcess | -1 engine needs to run in process (generally holds for GIS stuff only), 0 (false) otherwise, if it can run in a separate process |

### Update Properties Tester project

* Double-click Tester\DnnnnDSMPrpTester.vbg
* In File not found dialog, Click Yes
* Select File => Save Project Group As...
* Enter File name: DnnnnDHTPrpTester.vbg
* Click OK
* In Project Group, click Project 1 (DnnnnDSMPrpTester.vbp)
* Select File => Save DnnnnDHTPrpTester.vbp As...
* Enter File name: DnnnnDHTPrpTester.vbp
* Click OK
* Double-click Form1 (Form1.frm)
* Right-click on properties control (the tabbed panel) and select Delete
* Select File => Add Project...
* Select Existing tab
* Select DnnnnDHTPrp.vbp
* Click OK
* Click DHTProperties icon and insert into Form1
* Select File => Make DnnnnXXXXPrpTester.exe...
* Enter File name: DnnnnDHTPrpTester.exe
* Click OK
* Using Windows Explorer, delete the old Tester\DnnnnDSMPrpTester.* files

---

## Update Engine

* In \NEngineInterface create a file "dht.test.r"
* Add a "hello world" R function e.g.

<p/>

    cat ('Hello world!')

* The NEngineInterface will source this code which will serve our purposes until all the components are running.

---

## Update NEngineInterface

Following a process similar for Properties above:

* Double-click NEngineInterface\DnnnnDSMPrp.vbp

### Rename control 
No control but same process for class
DSMNEngineInterface (DSMNEngineInterface.cls)
Save DSMNEngineInterface.cls As... DHTNEngineInterface.cls
### Rename resource
### Rename project
### Update meta-data
### Register component and generate licence key - NO
### Update database - NO

* Fix the Tester project
* Test:
  - Create a new project
  - Use the new properties pages to specify a new analysis with the new analysis engine
  - Run the new analysis engine and see if it runs OK
  - Look at the results in the .dst file - we can't actually see them yet as the details pages aren't done, on which note...

### Update Properties Tester project
* In Project Group, click DnnnnDSMEITester (DnnnnDSMNEITester.vbp)
* Select File => Save DnnnnDSMNEITester.vbp As...
* Select File => Add Project...
* Select Existing tab
* Select DnnnnDHTPrp.vbp
* Click OK

* Select Project => References
* Click Browse...
* Select DLL
Register DLL
Update 

???
Won't compile!

* Double-click Form1 (Form1.frm)
* Double-click Run


* Select File => Make DnnnnXXXXPrpTester.exe...
* Enter File name: DnnnnDHTPrpTester.exe
* Click OK
* Using Windows Explorer, delete the old Tester\DnnnnDSMPrpTester.* files







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






## Register component with registry

* Open Command Prompt
* Run:

<p/>

    regsvr32.exe DnnnnDHTPrp.ocx

## Unregister component from registry

* Open Command Prompt
* Run:

<p/>

    regsvr32.exe /u DnnnnDHTPrp.ocx

## Check component registry entry

* Open Command Prompt
* Run:

<p/>

    regedit

* Browse to My Computer\HKEY_CLASSES_ROOT\DnnnnDHTPrp.*

## Generate licence key for component

* Make sure you have registered the component in the registry - see [Register components with registry](./TODO)
* Double-click %BASE%\Misc\GenerateLicenseKey\GenerateLicenseKey.vbp
* In Project browser, double-click Forms
* Double-click Form1 (GenerateLicenseKey.frm)
* Double-click Combo1 drop-down arrow 
* Scroll down and code to add component name to combo drop-down e.g.

</p>

    Combo1.AddItem "D6DHTPrp.DHTProperties"

* Select File => Save Project
* Select File => Make GenerateLicenseKey.exe
* Click OK
* Double-click %BASE%\Misc\GenerateLicenseKey\GenerateLicenseKey.exe
* Select component name from drop-down list e.g. D6DHTPrp.DHTProperties
* Click GenerateKey
* The license key will be shown
