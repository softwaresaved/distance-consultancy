---
layout: page
root: ..
title: DLL Base Addresses
---

In Visual Basic, the default DLL base address is &H11000000. This will cause lots of memory re-allocation. Components will load faster if a random number between this and &H80000000 is chosen. 

DLL addresses used to date in Distance components are as follows.

| Component    | Address    |
| ------------ | ---------- |
|**Unassigned**|            |
| DnnnnDesNEI  | &H11000000 |
| CDlg3        | &H11000000 |
| PrjParams6   | &H11000000 |
|              |            |
| **Assigned** |            |
| DnnnnMap     | &H13880000 |
| DnnnnDHTPrp  | &H15830000 |
| DnnnnDesEng  | &H17370000 |
| DnnnnCDSNEI  | &H18370000 |
| DnnnnIDWiz   | &H20010000 |
| DnnnnCDSDet  | &H22170000 |
| DnnnnSvyDet  | &H23170000 |
| DnnnnMAPrp   | &H24100000 |
| DnnnnMRDSPrp | &H24100000 |
| DnnnnLegend  | &H25870000 |
| CSDesc       | &H26790000 |
| DnnnnDSMDet  | &H27000000 |
| DnnnnMRDSDet | &H27770000 |
| DnnnnDbEng   | &H28770000 |
| DnnnnDesDet  | &H29170000 |
| DnnnnSPWiz   | &H30010000 |
| DnnnnNEIUtil | &H31000000 |
| DnnnnMRDSNEI | &H31010000 |
| DnnnnSvyPrp  | &H32030000 |
| DnnnnDHTNEI  | &H33290000 |
| DnnnnUtil    | &H34320000 |
| DnnnnDHTDet  | &H35320000 |
| DnnnnCDSPrp  | &H36870000 |
| CTmr         | &H38460000 |
| DnnnnDSMNEI  | &H40000000 |
| DnnnnNSvr    | &H41320000 |
| DnnnnDesPrp  | &H41720000 |
| DnnnnDSMPrp  | &H42000000 |
| DnnnnDFPrp   | &H46290000 |
| DnnnnMDPrp   | &H48170000 |
| SList        | &H48570000 |
| DnnnnSvyNEI  | &H57830000 |
| LogStr       | &H60160000 |
| LogWin       | &H61520000 |
| IDnnnnNEng   | &H73000000 |
