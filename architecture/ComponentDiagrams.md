---
layout: page
root: ..
title: Component diagrams
---

## Analysis components 

![Analysis components]({{ site.url }}/assets/architecture/AnalysisDiagram.jpg)

Distance's analysis components. 

* Solid arrows denote dependencies.
* Dependencies on components in cross-cutting concerns are not shown - most components depend on these.
* Dependencies of NEIs on NEIUtilities are not shown - all NEIs depend on this.

## GUI components 

![GUI components]({{ site.url }}/assets/architecture/GUIDiagram.jpg)

Distance's GUI components. 

* Solid arrows denote dependencies.
* Dotted arrows denote display components included in other display components.
* Dependencies on components in cross-cutting concerns are not shown - most components depend on these.
* Dependencies on the following are not shown - most components depend on these:
  - Utilities
    - Code timer, CTmr4
    - Log string, LogStr3
  - GUI components
    - Common dialog wrapper, CDlg3
  - GUI display components included in other display components:
    - Log window, LogWin3
    - Label line, LLine3
    - Section list, SList4
    - Coordinate system description, CSDesc3
