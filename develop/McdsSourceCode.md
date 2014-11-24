---
layout: page
root: ..
title: How to get MCDS Fortran Source Code
sections:
- Introduction
- Get MCDS source code using Free Software Foundation CVS client
- Get MCDS source code using TortoiseCVS
---

## Introduction

* MCDS source code is written in Fortran and is hosted on SourceForge:
  - [http://sourceforge.net/projects/distanceengines](http://sourceforge.net/projects/distanceengines)
* The source code can be browsed via: 
  - [http://distanceengines.cvs.sourceforge.net/viewvc/distanceengines/mcds/](http://distanceengines.cvs.sourceforge.net/viewvc/distanceengines/mcds/)
* MCDS source code can be checked out anonymously
* If working with Distance for Windows and Visual Basic, check out the repository under the folder: %BASE%\Analysis Engines\CDS\Engine\

## Get MCDS source code using Free Software Foundation CVS client

Run:

<p/>

    set HOME=%cd%\
    cvs -d:pserver:anonymous@distanceengines.cvs.sourceforge.net:/cvsroot/distanceengines/ co mcds

Or, if you have a SourceForge account and write access to the repository:

    set HOME=%cd%\
    cvs -d:ext:USERNAME@distanceengines.cvs.sourceforge.net:/cvsroot/distanceengines/ co mcds

## Get MCDS source code using TortoiseCVS

* Right-click and select CVS Checkout...
* Enter Protocol: 
  - If doing an anonymous check out, select Password server (:pserver:)
  - If you have a SourceForge account and write access to the repository, select Secure shell (:ext:)
* Enter Server: distanceengines.cvs.sourceforge.net
* Enter Repository folder: /cvsroot/distanceengines/
* Enter User name: 
  - If doing an anonymous check out, enter: anonymous
  - If you have a SourceForge account and write access to the repository, enter your user name
* Next to Module, Click Fetch list...
* Select Module: mcds
* Click OK
* In Finished checkout, click OK
