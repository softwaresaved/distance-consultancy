---
layout: page
root: ..
title: How to get MCDS Fortran Source Code
---

MCDS source code is written in Fortran and is hosted on SourceForge at:

* [http://sourceforge.net/projects/distanceengines](http://sourceforge.net/projects/distanceengines)

The source code can be browsed via:

* [http://distanceengines.cvs.sourceforge.net/viewvc/distanceengines/mcds/](http://distanceengines.cvs.sourceforge.net/viewvc/distanceengines/mcds/)

---

## Get the MCDS source code

* MCDS source code can be checked out anonymously
* If working with Distance for Windows and Visual Basic, check out the repository under the folder: %BASE%\Analysis Engines\CDS\Engine\
* Using your preferred CVS client, check out the CVS repository:

### Get via Free Software Foundation CVS client

<p/>

    set HOME=%cd%\
    cvs -d:pserver:anonymous@distanceengines.cvs.sourceforge.net:/cvsroot/distanceengines/ co mcds

<p/>

### Get via TortoiseCVS

* Right-click and select CVS Checkout...
* Enter Protocol: Password server (:pserver:)
* Enter Server: distanceengines.cvs.sourceforge.net
* Enter Repository folder: /cvsroot/distanceengines/
* Enter User name: anonymous
* Next to Module, Click Fetch list...
* Select Module: mcds
* Click OK
* In Finished checkout, click OK
