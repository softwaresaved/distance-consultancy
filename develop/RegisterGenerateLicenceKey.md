---
layout: page
root: ..
title: How to register components and generate licence keys
---

## Register component with registry

* Open Command Prompt
* Run:

<p/>

    regsvr32.exe DnnnnDHTPrp.ocx

---

## Unregister component from registry

* Open Command Prompt
* Run:

<p/>

    regsvr32.exe /u DnnnnDHTPrp.ocx

---

## Check component registry entry

* Open Command Prompt
* Run:

<p/>

    regedit

* Browse to My Computer\HKEY_CLASSES_ROOT\DnnnnDHTPrp.*

---

## Generate licence key for component

* [Register component with registry](#register-component-with-registry)
* Double-click %BASE%\Misc\GenerateLicenseKey\GenerateLicenseKey.vbp
* In Project browser, double-click Forms
* Double-click Form1 (GenerateLicenseKey.frm)
* Double-click Combo1 drop-down arrow 
* Scroll down and code to add component name to combo drop-down e.g.

<p/>

    Combo1.AddItem "D6DHTPrp.DHTProperties"

* Select File => Save Project
* Select File => Make GenerateLicenseKey.exe
* Click OK
* Double-click %BASE%\Misc\GenerateLicenseKey\GenerateLicenseKey.exe
* Select component name from drop-down list e.g. D6DHTPrp.DHTProperties
* Click GenerateKey
* The license key will be shown
