---
layout: page
root: ..
title: Set up Fortran development environment
---

## Compaq Visual Fortran 6.6 Professional

| Use | Fortran development, edit .dsw projects, compile into .exe e.g. build MCDS.exe analysis engine |
| Recommended version | - |
| License | proprietary |

Download and install:

* Install from Fortran CD
* Update to 6.6C by running %BASE%Extras\DistanceDevCD\FORTRAN\CVF-66-66C3.exe

---

## Ec.exe

| Use | Stand-alone executable to capture standard output and standard error when running another executable |
| Recommended version | - |
| License | proprietary |

Download and install:

* Provided as part of Compaq Visual Fortran Professional. See also:
  - %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Ec.exe
  - %BASE%\Numerical Server\NEngineHost\EC.EXE

---

## IMSL Numerical routines

| Use | High-performance mathematical and statistical Fortran algorithms. |
| Recommended version | |
| License | proprietary |

Download and install:

*  Provided as part of Compaq Visual Fortran Professional

---

## Array Visualizer (optional)

| Use | View and analyse array data graphically |
| Recommended version | - |
| License | proprietary |

Download and install:

* Install from CD

---

## TortoiseCVS

* [TortoiseCVS](http://www.tortoisecvs.org/)
* Fortran source code management using CVS
* Recommended version: any
* License: GNU General Public License

Download and install:

* Download from [Downloads](http://www.tortoisecvs.org/download.shtml)
* Double-click .exe e.g. TortoiseCVS-1.12.5.exe

---

## Concurrent Version System

* [Concurrent Version System](http://www.nongnu.org/cvs/)
* Fortran source code management using CVS
* Recommended version: any
* License: GNU General Public License

Download and install:

* Download from [FTP directory](http://ftp.gnu.org/non-gnu/cvs/) 
  - Binary releases are within a [binary/stable/](http://ftp.gnu.org/non-gnu/cvs/binary/stable/x86-woe/) sub-directory
* Unzip .zip e.g. cvs-1-11-22.zip 
* cvs.exe is used as-is e.g.:

    > cvs.exe
    Concurrent Versions System (CVS) 1.11.22 (client)
    Copyright (C) 2006 Free Software Foundation, Inc.
