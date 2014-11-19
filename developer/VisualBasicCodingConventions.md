---
layout: page
root: ..
title: Visual Basic Coding Conventions
---

**If you make any changes to these coding conventions notify the development team of the change!**

---

Class Naming Conventions
========================

General
-------

All classes should have a 3 letter prefix, with the initial letter capitalized, that indicates the kind of class. For example, DlgModelDefinition says that the Model Definition class is a dialog (Dlg) form. The 3 letter prefixes are listed in the following sections.

In addition, some classes which are very closely associated with another class (usually a form) have second 2 letter prefix. This comes between the class prefix and the name, indicating which class they are assocated with. For example, DlgABColumnManager is the Column Manager dialog (Dlg) form attached to the Analysis Browser (AB). The 2 letter prefixes used are as follows:

| 2-letter prefix | Class associated with |
| --------------- | --------------------- |
| AD | Analysis Details |
| BR | Browser (generic) |
| CD | Conventional distance sampling engine (properties) |
| DD | Design Details |
| DE | Data Explorer |
| DF | Data Filter (properties) |
| DI | Data Import |
| DS | Design (properties) |
| FM | FitModel (properties) |
| ID | Simulation Details |
| MD | Model Definition (properties) |
| SP | Setup Project |
| SD | Survey Details |

When saving classes to file, drop the prefix e.g. form DlgABColumnManager becomes ColumnManager.frm. See Form and Module Filenames below for more details.

Declaring Classes
-----------------

All classes that are not standard VB classes and are not user-defined should be fully qualififed. For example:

    Dim fldTemp As Field 'No qualifying here as a standard VB class
    Dim mofldTemp As MapObjects.Field
    Dim flxGrid As New vsFlexLib.vsFlexArray

Prefixes for Form Modules
-------------------------

| Form type | Explanation | Prefix | Example |
| --------- | ----------- | ------ | ------- |
| Dialog form | Modal form, usually with BorderStyle property = Fixed Dialog | Dlg  | DlgOpenProject |
| Wizard form | Special type of Dialog form that provides an interactive user interface for complex tasks | Wiz | WizDataImport |
| MDI parent form | Multiple document interface parent form - only one in the app | Mdi | MdiMain |
| Multiple instance form | Child form of the MDI parent where more than one can be shown at once |  Mif | MifAnalysisDetails |
| Single instance form | Child form of the MDI parent where only one can be shown at once | Sif | SifDataExplorer |
| Other (general) form | Anything else - should be very few of these! | Frm | FrmDialogStorage |

Prefixes for Code Modules
-------------------------

Database-specific code modules are prefixed with Dbe, for Database Engine.

All other code modules are prefixed with Mod e.g. ModMain. 

Prefixes for Class Modules
-------------------------

Class modules are prefixed with Cls e.g. ClsAnalysisServerInterface. 

Classes that are collections have pluralized names e.g. the Analysis Server Interface collection is ClsAnalysisServerInterfaces.

Prefixes for User Control Modules
---------------------------------

In general, user controls have the prefix Ctl e.g. CtlLabelLine.

However, there are two special subsets of the users controls:

* Input Pages, with prefix Pag. An input page is a user control that contains many standard controls and is presented to the user as an input page on a dialog or wizard form (usually the pages are selected among using a tab control). See DlgModelDefinition for an example. Input page classes are given the prefix Pag, and always have a second prefix indicating the form they are placed on e.g. PagMDModels is the Models input page that goes on the Model Definition form.
* Details Pages, with prefix Det. These are user controls that go on a Details form. They are given the prefix Det, to separate them from the other controls e.g. CDetDDInputs is the design details inputs control.

---

Object Naming Conventions
=========================

Prefixes for Controls (mapping controls excluded) and other classes
-------------------------------------------------------------------

Other classes include, for example, StringBuilder.

| Control type | Prefix | Example | Date added |
| ------------ | ------ | ------- | ---------- |
| 3D Panel | pnl | pnlGroup | |
| ActiveBar (by Data Dynamcs) | bar | barAnalysis | 6/4/98 |
| Animated button | ani | aniMailBox | |
| Browse dialog (by Common Controls Replacement Program) | bdlg | bdlgBrowse | 14/7/98 |
| Chart (by Microsoft) | chrt | chrtResults | 5/7/98 |
| Check box | chk | chkReadOnly | |
| Combo box, drop-down list box | cbo | cboEnglish | |
| Command button | cmd | cmdExit | |
| Common dialog | dlg | dlgFileOpen | |
| Communications | com | comFax | |
| Control (used when the specific type is unknown) | ctr | ctrCurrent | |
| Data control | dat | datBiblio | |
| Data-bound combo box | dbcbo | dbcboLanguage | |
| Data-bound grid | dbgrd | dbgrdQueryResult | |
| Data-bound list box | dblst | dblstJobType | |
| Directory list box | dir | dirSource | |
| Drive list box | drv | drvTarget | |
| File dialog (by Common Controls Replacement Program) | fdlg | fdlgOpen | 14/7/98 |
| File | file | fileTemp | 11/8/00 |
| File list box | fil | filSource | |
| FileSystemObject | fso | fsoTemp | 11/8/00 |
| FlexArray (by Video Soft) | flx | flxDataSheet | 2/2/98 |
| FlexString (by Video Soft) | flxstr | flxstrResults | 17/2/98 |
| Folder | fldr | fldrTemp | 11/8/00 |
| Frame | fra | fraLanguage | |
| Gauge | gau | gauStatus | |
| Grid | grd | grdPrices | |
| Horizontal scroll bar | hsb | hsbVolume | |
| Image | img | imgIcon | |
| ImageList | ils | ilsAllIcons | |
| ImprintPro (by Far Point) | imp | impDataSheet | 24/2/98 |
| Input page (by ljt - group of user controls) | pag | pagModel | 16/3/98 |
| Key status | key | keyCaps | |
| Label | lbl | lblHelpMessage | | 
| LabelLine (by ljt) | lal | lalInput | |
| Line | lin | linVertical | |
| ListBar (by Sheridan Software) | lbr | lbrAnalysisInputs | |
| ListItem (by Sheridan Software) | lit | litModel | |
| List box | lst | lstPolicyCodes | |
| ListView | lvw | lvwHeadings | |
| MAPI message | mpm | mpmSentMessage | |
| MAPI session | mps | mpsSession | |
| Masked edit | mas | masAlpah | |
| MCI | mci | mciVideo | |
| Menu | mnu | mnuFileOpen | |
| MsgDisplay (by ljt) | msg | msgOutput | |
| MS Tab | mst | mstFirst | |
| Node | nod | nodMember | |
| OLE | ole | oleWorksheet | |
| Option button | opt | optChoice | |
| Outline | out | outOrgChart | |
| Input page (by ljt) | pag | pagModel | |
| ParseListBox (by ljt) | prslst | prslstLog | |
| Pen BEdit | bed | bedFirstName | |
| Pen HEdit | hed | hedSignature | |
| Pen ink | ink | inkMap | |
| Picture | pic | picVGA | |
| Picture clip | clp | clpToolbar | |
| ProgressBar | prg | prgLoadFile | |
| RegExp | rex | rexString | |
| Report | rpt | rptQtr1Earnings | |
| Ribbon (by Sheridan Software) | rib | ribPlotStyle | |
| RichTextBox | rtf | rtfReport | |
| Shape | shp | shpCircle | |
| Slider | sld | sldScale | |
| Spin | spn | spnPages | |
| Splitter (by Sheridan Software) | spl | splAnalysisDetails | |
| StatusBar | sta | staDateTime | |
| StringBuilder | stb | stbCommand | |
| Tab (see next) | tab | tabOptons | |
| TabStrip | tabs | tabsDefinitions | |
| TabPro (by Far Point) | tap | tapDefinitions | |
| Text box | txt | txtLastName | |
| Timer | tmr | tmrAlarm | |
| Tool (by Data Dynamcs) | tool | toolPaste | |
| Toolbar | tlb | tlbActions | |
| TreeView | tre | treOrganization | |
| UpDown | upd | updDirection | |
| User Control (unless given specific prefix) | uct | uctInputs | |
| VBControlExtender | ctlext | ctlextNew | |
| Vertical scroll bar | vsb | vsbRate | |

Collection objects should have an 's' added to the prefix, and the variable name should be pluralized. For example:

    Dim nodMember As Node
    Dim nodsMembers As Nodes

Choosing Prefixes for Other Controls
------------------------------------

For controls not listed above, standardize on a unique two or three character prefix. Use more than three characters only if needed for clarity. 

**Once you decide on a new prefix, add it to the table above, write in the date, and notify the development team of the update.**

Prefixes for ESRI MapObjects
----------------------------

Prefix for the Control:

| Type | Prefix |
| ---- | ------ |
| Map | map |

Prefixes for Objects:

| Category | Type | Prefix |
| -------- | ---- | ------ |
| Address Matching | Address | add |
| | AddressLocation | adl |
| | AddressMatcher | adm |
| | PlaceLocator | pll |
| Data Access | DataConnection | dcn |
| | Field | mofld |
| | GeoDataset | geo |
| | Recordset | morec |
| | Statistics | sts |
| | Table | tbl |
| | TableDesc | tds |
| Map Display | ClassBreaksRenderer | cbr |
| | DotDensityRenderer | ddr |
| | GeoEvent | gev |
| | MapLayer | mly |
| | ImageLayer | ily |
| | LabelRenderer | lbr |
| | Symbol | sym |
| | TextSymbol | tsym |
| | TrackingLayer | tly |
| | ValueMapRenderer | vmr |
| Geometric | Ellipse | elp |
| | Line | molin |
| | Point | pnt |
| | Polygon | pgn |
| | Rectangle | rtg |
| moPlus | ChartRenderer | chrtr |
| | GroupRenderer | grr |
| | LabelPlacer | lbp |
| | PathFinder | ptf |

Prefixes for Collections:

| Category | Type | Prefix |
| -------- | ---- | ------ |
| Data Access | Fields | moflds |
| | GeoDatasets | geos |
| Map Display | Layers | lyrs |
| Geometric | Parts | prts |
| | Points | pnts |
| Utility | Strings | mostrs |

Prefixes for Data Access Objects (DAO)
--------------------------------------

| Database object | Prefix | Example |
| --------------- | ------ | ------- |
| Container | con | conReports |
| Database | db | dbAccounts |
| DBEngine | dbe | dbeJet |
| Document | doc | docSalesReport |
| Field | fld | fldAddress |
| Group | grp | grpFinance |
| Index | idx | idxAge |
| Parameter | prm | prmJobCode |
| QueryDef | qry | qrySalesByRegion |
| Recordset | rec | recForecast |
| Relation | rel | relEmployeeDept |
| TableDef | tdf | tdfCustomers |
| User | usr | usrNew |
| Workspace | wsp | wspMine |

Some examples:

    Dim dbBiblio As Database
    Dim recPubsInNY As Recordset, strSQLStmt As String
    'Open database.
    Set dbBiblio = OpenDatabase("BIBLIO.MDB")
    ' Set text for the SQL statement.
    strSQLStmt = "SELECT * FROM Publishers WHERE " & _ State = 'NY'"
    ' Create the new Recordset object.
    Set recPubsInNY = db.OpenRecordset(strSQLStmt, _ dbReadOnly)

Prefixes for User-defined Class Instances
-----------------------------------------

Includes Class, Form, Code and User control Modules.

In general, the prefix for all instances of classes defined is the same as the class prefix, but with the initial capital in lower case. For example: 

    Dim dlgModelDefinition As DlgModelDefinition
    Dim clsAnlaysisServerInterface As New ClsAnalysisServerInterface

An exception to this is the user control LabelLine, which is used widely as a general control, and is given all sorts of object names. Instead of the prefix uct, it has the prefix lal. For example:

    Dim lalModelHeader As UctLabelLine

---

Constant and Variable Coding Conventions
========================================

In addition to objects, constants and variables also require well-formed naming conventions. This section lists recommended conventions for constants and variables supported by Visual Basic. It also discusses the issues of identifying data type and scope.

Variables should always be defined with the smallest scope possible. Global (Public) variables can create enormously complex state machines and make the logic of an application extremely difficult to understand. Global variables also make the reuse and maintenance of the code much more difficult.

Variables in Visual Basic can have the following scope:

| Scope | Declaration | Visible in |
| ------| ----------- | ---------- | 
| Procedure-level | Private in procedure, subroutine, or function | The procedure in which it is declared |
| Module-level | Private in the declarations section of a form or code module (.frm, .bas) | Every procedure in the form or code module |
| Global | Public in the declarations section of a code module (.bas) | Everywhere in the application |

In a Visual Basic application, global variables should be used only when there is no other convenient way to share data between forms. When global variables must be used, it is good practice to declare them all in a single module, grouped by function. Give the module a meaningful name that indicates its purpose e.g. modPublic.

It is good coding practice to write modular code whenever possible. For example, if the application displays a dialog box, put all the controls and code required to perform the dialog's task in a single form. This helps to keep the application's code organized into useful components and minimizes its run-time overhead.

With the exception of global variables (which should not be passed), procedures and functions should operate only on objects passed to them. Global variables that are used in procedures should be identified in the declaration section at the beginning of the procedure.

Variables
---------

Declaring all variables saves programming time by reducing the number of bugs caused by typos (for example, aUserNameTmp vs. sUserNameTmp vs. sUserNameTemp). 

**Within Visual Basic, select Tools => Options... then, in the Editor tab, check the Require Variable Declaration option.** This puts an Option Explicit statement at the beginning of each new form, which in turn requires that all variables in a Visual Basic program are declared explicitly.

Variables should be prefixed to indicate their data type. The prefix should also be extended to indicate the scope of the variable (see following section).

Variable Data Types
-------------------

Use the following prefixes to indicate a variable's data type.

| Data type | Prefix | Example |
| --------- | ------ | ------- |
| Boolean | bln | blnFound |
| Byte | byt | bytRasterData |
| Collection object | col | colWidgets |
| Currency | cur | curRevenue |
| Date (Time) | dtm | dtmStart |
| Double | dbl | dblTolerance |
| Error | err | errOrderNum |
| Integer | int | intQuantity |
| Long | lng | lngDistance |
| Object | obj | objCurrent |
| Single | sng | sngAverage |
| String | str | strFName |
| User-defined type | udt | udtEmployee |
| Variant | vnt | vntCheckSum |

The only exception to the above is for simple looping variables in For loops, which are always integers (see below).

Variable Scope Prefixes
-----------------------

As project size grows, so does the value of recognizing variable scope quickly. A one-letter scope prefix preceding the type prefix provides this, without greatly increasing the size of variable names.

| Scope | Prefix | Example |
| ----- | -----  | ------- |
| Global | g | gstrUserName |
| Module-level | m | mblnCalcInProgress |
| Local to procedure | None | dblVelocity |

A variable has global scope if it is declared Public in a standard module or a form module. A variable has module-level scope if declared Private in a standard module or form module, respectively.

**Note** Consistency is crucial to the productive use of this technique - the syntax checker in Visual Basic will not catch module-level variables that begin with "p."

Constants
---------

The body of constant names should be all upper case. In addition, use the same prefix rules as for variables. For example:

    mintUSER_LIST_MAX 'Max entry limit for User list
                      '(integer value,local to module)
    gstrNEW_LINE 'New Line character
                 '(string, global to application)

Enumerated constants
--------------------

These are all given the prefix dst (for Distance). For example:

    Public Enum ProjectSettingsLocations
        dstProject = 0
        dstRegistry = 1
        dstProjectThenRegistry = 2
    End Enum

Enumerations should be used in place of constants wherever possible, as they then appear in the drop down list when you are typing, reducing typing errors.

User-Defined Types
------------------

In a large project with many user-defined types, it is often useful to give each such type a three-character prefix of its own. If these prefixes begin with "u" they will still be easy to recognize quickly when you are working with a user-defined type. For example, "ucli" could be used as the prefix for variables of a user-defined Client type.

The following is a list of user defined types:

| Data type | Prefix | Example | Date added |
| --------- | ------ | ------- | ---------- |
| none yet | none yet | none yet | none yet |

Descriptive Variable, Constant and Procedure Names
--------------------------------------------------

The body of a variable or procedure name should use mixed case and should be as long as necessary to describe its purpose. In addition, function names should begin with a verb, such as InitNameArray or CloseDialog.

For frequently used or long terms, standard abbreviations are recommended to help keep name lengths reasonable. In general, variable names greater than 32 characters can be difficult to read on VGA displays.

When using abbreviations, make sure they are consistent throughout the entire application. Randomly switching between Cnt and Count within a project will lead to unnecessary confusion. 

**When you use a new abbreviation, add it to the list below and write in the date.**

The following is the current list of abbreviations:

| Use | Abbreviation | Example | Date added |
| --- | ------------ | ------- | ---------- |
| Looping variable (note - this is the only time no prefix is required) | i, j, k | i | 2/2/98 |

Array Lower Bounds
------------------

Use base 0 wherever possible, and put Option Base 0 at the beginning of all modules, so it is the default.

---

Structured Coding Conventions
=============================

Structure of Forms and Modules
------------------------------

All forms and code modules should have the same basic structure:

- Introductory Comments - giving the purpose of the module, its assumptions, and public interface (see next section).
- Global Definitions (if there are any) - global type definitions, constants and variables.
- Module level Definitions - module level variables and constants.
- Public Properties.
- Public Methods.
- Private Subroutines and Functions (i.e. non event-driven subroutines and functions) - arranged in some kind of "logical order" (i.e. most important, high-level procedures first, with the procedures the call following them). There will obviously be some leeway for placement here.
- Control Event Subroutines, arranged in alphabetical order (this is the Windows default).

Separate each of these sections with a dashed line

    -----------------------------------------

See the Distance code for examples.

Code Commenting Conventions
---------------------------

All procedures and functions should begin with a brief comment describing the purpose and functional characteristics of the procedure (what it does), unless it is extrememly obvious. This description should not describe the implementation details (how it does it) because these often change over time, resulting in unnecessary comment maintenance work, or worse yet, erroneous comments. The code itself and any necessary inline comments will describe the implementation. However, for procedures that implement complex algorithms or use tricky programming, some brief implementation notes can be useful, so long as they are clearly delimited from the rest of the text (see table below).

Arguments passed to a procedure should be described when their functions are not obvious and when the procedure expects the arguments to be in a specific range. Function return values and global variables that are changed by the procedure, especially through reference arguments, should also be described at the beginning of each procedure.

Procedure header comment blocks should include the following section headings as required. For examples, see the next section on Formatting Code.

| Section heading | Comment description |
| --------------- | ------------------- |
| Purpose | What the procedure does, but not how |
| Called from | List of modules that call this module, only where this would be useful (mostly for non event driven utility procedures) |
| or |  |
| Called when | For event procedures, where not obvious |
| Assumptions | List of each external variable, control, open file, or other element that is not obvious |
| Effects | List of each affected external variable, control, or file and the effect it has, only if this is not obvious |
| Inputs | Each argument that may not be obvious. Arguments are on a separate line with inline comments. |
| Returns | Explanation of the values returned by functions |
| Implementation note | General notes about the algorithm used or other implementation details can be included if they will be useful to the understanding of the procedure
| | Seperate these from the other comments by one blank line, so they can be easily identified and changed if the implementation changes. |

Remember the following points:

* Every important variable declaration should include an inline or before-line comment describing the use of the variable being declared.
* Variables, controls, and procedures should be named clearly enough that inline commenting is only in more complex cases.
* At the start of the .bas module that contains the project's Visual Basic generic constant declarations (usually public.bas), you should include an overview that describes the application, enumerating primary data objects, procedures, algorithms, dialogs, databases, and system dependencies. Sometimes a piece of pseudocode describing the algorithm can be helpful. This can be written near the end of the project development cycle.
* Too many comments are better than too few, especially because other people will be working with the code we write!

Formatting Code
---------------

Because many programmers still use VGA displays, screen space should be conserved as much as possible while still allowing code formatting to reflect logic structure and nesting. Here are a few pointers:

* Standard, tab-based, nested blocks should be indented four spaces (the default).
* Highest level statements that follow the overview comment should be indented one tab, with each nested block indented an additional tab. For example:

<p/>

    Function intFindUser (strUserList() As String, strTargetUser As _
        String)As Integer
    'Purpose: Locates the first occurrence of a
    ' specified user in the UserList array.
    'Inputs:
    ' strUserList(): the list of users to be searched.
    ' strTargetUser: the name of the user to search for.
    'Returns: The index of the first occurrence of the
    ' rsTargetUser in the rasUserList array.
    ' If target user is not found, return -1.
    
    Dim i As Integer ' counter.
    Dim blnFound As Integer ' Target found flag.
    intFindUser = -1
    i = 0
    Do While i <= Ubound(strUserList) and Not blnFound
        If strUserList(i) = strTargetUser Then
            blnFound = True
            intFindUser = i
        End If
    Loop
    End Function

Grouping Constants
------------------

Defined constants at the module level should be grouped by function and placed at the beginning of the module to which they refer. Modules used in more than one form should do in ModGlobal. Where there is any
doubt, put it in ModGlobal!

& and + Operators
-----------------

Always use the & operator when linking strings and the + operator when working with numerical values. Using the + operator to concatenate may cause problems when operating on two variants. For example:

    vntVar1 = "10.01"
    vntVar2 = 11
    vntResult = vntVar1 + vntVar2 'vntResult = 21.01
    vntResult = vntVar1 & vntVar2 'vntResult = 10.0111

Creating Strings for MsgBox, InputBox and SQL Queries
-----------------------------------------------------

When creating a long string, use the underscore line-continuation character to create multiple lines of code so that you can read or debug the string easily. This technique is particularly useful when displaying a message box (MsgBox) or input box (InputBox) or when creating an SQL string. For example:

    Dim Msg As String
    Msg = "This is a paragraph that will be " _
    & "in a message box. The text is" _
    & " broken into several lines of code" _
    & " in the source code, making it easier" _
    & " for the programmer to read and debug."
    MsgBox Msg
    
    Dim strQuery As String
    strQuery = "SELECT *" _
    & " FROM Titles" _
    & " WHERE [Year Published] > 1988"
    TitlesQry.SQL = strQuery

Form and Module Filenames
-------------------------

The filename should be the same as the form or module name, minus the prefix. The file extension is the standard .frm for Forms, .mod for Modules, .cls for Classes and .ctl for User Controls. Examples:

| Form/module name | Filename |
| ---------------- | -------- |
| CDlgAddData | AddData.dlg |
| CModDatabase | Database.mod |
