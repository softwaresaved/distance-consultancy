DLL Base Addresses
==================

In Visual Basic, the default DLL base address is &H1100000. This will cause lots of memory re-allocation. Components will load faster if a random number between this and &H80000000 is chosen. 

DLL addresses used to date in Distance components to date are as follows.

| Component    | Address    |
| ------------ | ---------- |
| DnnnnMap     | &H13880000 |
| DnnnnDHTPrp  | &H15830000 |
| DnnnnDesEng  | &H17370000 |
| DnnnnCDSNEI  | &H18370000 |
| DnnnnIDWiz   | &H20010000 |
| DnnnnCDSDet  | &H22170000 |
| DnnnnSvyDet  | &H23170000 |
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
| DnnnnUtils   | &H34320000 |
| DnnnnDHTDet  | &H35320000 |
| DnnnnCDSPrp  | &H36870000 |
| CTmr         | &H38460000 |
| DnnnnFMPrp   | &H39130000 |
| DnnnnDSMNEI  | &H40000000 |
| DnnnnDesPrp  | &H41720000 |
| DnnnnDSMPrp  | &H42000000 |
| DnnnnDFPrp   | &H46290000 |
| DnnnnMDPrp   | &H48170000 |
| SList        | &H48570000 |
| DnnnnSimPrp  | &H51700000 |
| DnnnnSvyNEI  | &H57830000 |
| LogStr       | &H60160000 |
| LogWin       | &H61520000 |
| LLine        | &H67350000 |
| IDnnnnNEng   | &H73000000 |
