---
layout: page
root: ..
title: How to release MCDS on SourceForge
---

This section describes the process of releasing source and binary distributions of the standalone Fortran MCDS analysis engine.

In what follows:

* M - Major version number
* N - Minor version number
* R - Revision number
* Folder and file names for releases are composed using these:

| **Description** | **Name** | **Example** |
| --------------- | -------- | ----------- |
| Source local folder | mcds_MN_rR_source | mcds_50_r2_source.zip |
| Source ZIP | mcds_MN_rR_source.zip | mcds_50_r2_source.zip |
| Binary local folder | mcds_MN_rR | mcds_50_r2 |
| Binary ZIP | mcds_MN_rR.zip | mcds_50_r2.zip |
| SourceForge folder | mcds M.N release R | mcds 5.0 release 2 |

---

## Export MCDS from CVS

Using your preferred CVS client, export the CVS repository. This exports all the files for CVS but omits CVS-specific folders, version histories etc. 

### Export via Free Software Foundation CVS client

Run:

<p/>

    set HOME=%cd%\
    cvs -d:pserver:anonymous@distanceengines.cvs.sourceforge.net:/cvsroot/distanceengines/ export -DNOW -d mcds_MN_rR_source mcds

Or, if you have a SourceForge account and write access to the repository:

    set HOME=%cd%\
    cvs -d:ext:USERNAME@distanceengines.cvs.sourceforge.net:/cvsroot/distanceengines/ export -DNOW -d mcds_MN_rR_source mcds

### Export via TortoiseCVS

* Right-click where you want the code to be exported to and select CVS Checkout...
* If more than one CVSROOT Module combination is present in the Previous CVSROOTs table, then select the one for distanceengines.cvs.sourceforge.net with CVSROOT /cvsroot/distanceengines/ and module mcds
* Click Options tab
* Under Purpose of checkout, select Export - for making a software release
* Under Name of folder to create, select Enter your own folder name
* Enter: mcds_MN_rR_source
* Click OK
* In Finished checkout, click OK

### ZIP exported folder

* Right-click mcds_MN_rR_source and select Send to => Compressed (zipped) Folder 
* This will create mcds_MN_rR_source.zip

---

## Prepare binary bundle

* [Build MCDS analysis engine](./BuildFortran.html#build-mcds-analysis-engine)
* Right-click, select New => Folder
* Enter folder name mcds_MN_rR
* Copy MCDS.exe into mcds_MN_rR
* Right-click mcds_MN_rR and select Send to => Compressed (zipped) Folder 
* This will create mcds_MN_rR.zip

---

## Release on SourceForge

Create a new release folder on SourceForge:

* Browse to [http://sourceforge.net/projects/distanceengines/](http://sourceforge.net/projects/distanceengines/)
* Log in
* Click Files
* Click mcds
* Click Add Folder 
* Enter Folder name: mcds M.N release R
* Click Create

Upload your release:

* Click mcds M.N release R
* Click Add File
* Click Choose Files
* Select mcds_MN_rR_source.zip OR mcds_MN_rR.zip
* Click Upload

Set your release to be the default download:

* Click i icon next to mcds_MN_rR_source.zip OR mcds_MN_rR.zip
* Check Windows icon to make this the default download for Windows users OR click Select all to make this the default download for all
  - This affects the green Download button on the project page above
* Click Save
* Give it a few minutes, refresh your project page and check the link.
