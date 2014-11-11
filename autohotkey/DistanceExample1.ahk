;;; AutoHotkey script - Distance 6.2 Release 1 User's Guide Example 1
;;; Using Distance to Analyze Simple Data

#Include Config.ahk
#Include Utilities.ahk

SetWinDelay, %PauseTime%  ; Recommend 1000 (milliseconds) at least

OpenLog(LogFile)

;;; Start Distance
AppendLog(LogFile, "Starting Distance")
Run %DistanceExe%
WinWait Distance
WinWaitActive Welcome  ; Welcome to Distance
Send !o  ; Click OK

;;;
;;; Example 1 - Creating the Distance project
;;;

AppendLog(LogFile, "Create Project (Design a new survey)")
AppendLog(LogFile, "Project directory: " ProjectDir)
AppendLog(LogFile, "Project name: " ProjectName)
Send !f!n  ; Select File=>New...
WinWaitActive Create Project
SendRaw %ProjectFile%
Send !c  ; Click Create
WinWaitActive New Project
; Step 1: Type of Project
Send !a  ; Select Analyse a survey that has been completed
Send !n  ; Click Next
; Step 2: Setup for Analyzing a Survey
Send !n  ; Click Next
; Step 3: Survey methods 
Send {TAB 6}  ; Tab to Observations radiobuttons
Send {Down}  ; Switch radiobutton to Clusters of objects
Send !n  ; Click Next
; Step 4: Measurement Units
Send {TAB 8}  ; Tab to Distance list
Send {Down}  ; Move down list from Meter to Metre
Send {TAB}  ; Tab to Transect length list
Send {Down}  ; Move down list from Kilometer to Kilometre
Send {TAB}  ; Tab to Area list
Send {Down 7}  ; Move down list from Hectare to Square Kilometre
Send !n  ; Click Next
; Step 5: Multipliers
Send !n  ; Click Next
Send {TAB 15}  ; Tab to Destinations radiobuttons
Send {Down}  ; Switch radiobutton to Proceed to Data Import Wizard
Send !f  ; Click Finish

;;;
;;; Example 1 - Importing the data
;;;

AppendLog(LogFile, "Import Data Wizard")
WinWaitActive Import Data Wizard
; Step 1: Introduction
Send !n  ; Click Next
; Step 2: Data Source
SendRaw %Example1Txt%
Send !o  ; Click OK
; Step 3: Data Destination
Send !n  ; Click Next
; Step 4: Data File Format
WinWaitActive Import Data Wizard - Step 4
Send {TAB 14}  ; Tab to Ignore rows checkbox
Send {Space} ; Set Do not import first row
Send !n  ; Click Next
; Step 5: Data File Structure
WinWaitActive Import Data Wizard - Step 5
Send {TAB 14}  ; Tab to Shortcuts 
Send {Space} ; Set Columns are in the same order as they will appear in the data sheete%
Send !n  ; Click Next
; Step 6: Finished
Send !f  ; Click Finish

;;;
;;; Example 1 - Studying the data in Distance
;;;

WinWaitActive, , Project Browser  ; Project Browser is not in Window Title but is in Visible Window Text
Send {TAB 2}  ; Tab to Study area
Send {Down 3}  ; Move down to Observation

;;;
;;; Example 1 – Running the first analysis
;;;

Click 840, 150  ; Click Analyses tab
Sleep %PauseTime%  ; Wait extra time for tab to appear
Click 35, 235, 2  ; Double-click gray ball on first analysis row

; Analysis 1 is not in Window Title. Analysis 1 is in Visible Window Text
; but for Project Browser as well as Analysis 1 window. Run is in 
; Analysis 1 Visible Window Text only.
WinWaitActive, , Run
Send {TAB 3}  ; Tab to Analysis Name
SendRaw Untruncated hn+cos
Send {TAB 5}  ; Tab to Model definition, Properties...
Send {Enter}  ; Can't use !p as two widgets share this short-cut

WinWaitActive Model Definition Properties
Send !e  ; Click Estimate tab
Send {Right}  ; Move to Detection function tab. Can't use !d as 3 widgets share this short-cut
Send {TAB 32}  ; Tab to Name
SendRaw hn+cos
Send !o  ; Click OK
Send !R  ; Click Run

Sleep %PauseTime%  ; Wait extra time for run to complete
WinWaitActive, , Run
Send !{n 17}  ; Click Next 17 times

Click 590, 140  ; Click Analysis window X icon
Sleep %PauseTime%  ; Clicking X above may leave no Distance window active
ReactivateDistance(ProjectName)

;;;
;;; Example 1 - Creating a new analysis
;;;

Send !a!n  ; Select Analyses=>New Analysis...
Sleep %PauseTime%  ; Wait extra time for row to appear
Click 35, 255, 2  ; Double-click gray ball on second analysis row

WinWaitActive, , Run
Send {TAB 3}  ; Tab to Analysis Name
SendRaw Untruncated hr+poly
Send {TAB 11}  ; Tab to Model definition, New...
Send {Enter}  ; Can't use !n as two widgets share this short-cut

WinWaitActive Model Definition Properties
Send !e  ; Click Estimate tab
Send {Right}  ; Move to Detection function tab. Can't use !d as 3 widgets share this short-cut
Click 160, 210  ; Click Key function list
Send {Down}  ; Move down list from Half-normal to Hazard-rate
Click 300, 210  ; Click Series expansion list
Send {Down}  ; Move down list from Cosine to Simple polynomial
Send {TAB 23}  ; Tab to Name
SendRaw hr+poly
Send !o  ; Click OK
Send !R  ; Click Run

Sleep %PauseTime%  ; Wait extra time for run to complete
WinWaitActive, , Run
Send {Alt Down}{Down}{Alt Up}  ; Move from Log tab to Results tab
Sleep %PauseTime%  ; Wait extra time for update
Send !{n 17}  ; Click Next 17 times

Click 590, 140  ; Click Analysis window X icon
Sleep %PauseTime%  ; Clicking X above may leave no Distance window active
ReactivateDistance(ProjectName)

;;;
;;; Example 1 - Further investigations
;;;

Send !a!n  ; Select Analyses=>New Analysis...
Sleep %PauseTime%  ; Wait extra time for row to appear
Click 35, 275, 2  ; Double-click gray ball on third analysis row

WinWaitActive, , Run
Send {TAB 3}  ; Tab to Analysis Name
SendRaw 19m trunc hn+cos
Send {TAB 10}  ; Tab to Data filter, New...
Send {Enter}  ; Can't use !n as two widgets share this short-cut

WinWaitActive Data Filter Properties
Send !t  ; Click Truncation tab
Send {TAB 8}  ; Tab to Right truncation
Send {Down 2}  ; Switch radiobutton to Discard all observations beyond
Send {TAB}  ; Tab to value
Send {Delete}  ; Delete value, 1, that is there 
SendRaw 19
Send {TAB 11}  ; Tab to Name
SendRaw 19m truncation
Send !o  ; Click OK

Sleep %PauseTime%  ; Wait extra time for update
Click 590, 140  ; Click Analysis window X icon

Sleep %PauseTime%  ; Clicking X above may leave no Distance window active
ReactivateDistance(ProjectName)

Send !a!n  ; Select Analyses=>New Analysis...
Sleep %PauseTime%  ; Wait extra time for row to appear
Click 35, 295, 2  ; Double-click gray ball on fourth analysis row

WinWaitActive, , Run
Send {TAB 3}  ; Tab to Analysis Name
SendRaw 19m trunc hr+poly
Send {TAB 13}  ; Tab to Data filter list
Send {Down}  ; Move down list from Default Data Filter to 19m truncation
Send {TAB 16}  ; Tab to Model definition list
Send {Down}  ; Move down list from hn+cos to hr+poly

Sleep %PauseTime%  ; Wait extra time for update
Click 590, 140  ; Click Analysis window X icon

Sleep %PauseTime%  ; Clicking X above may leave no Distance window active
ReactivateDistance(ProjectName)

Click 35, 275  ; Click gray ball on third analysis row
Send {Ctrl Down}
Click 35, 295  ; Click gray ball on fourth analysis row
Send {Ctrl Up}
Send !a!r  ; Select Analyses=>Run Analysis...

Sleep %PauseTime%
ReactivateDistance(ProjectName)

;;;
;;; Exit
;;;

AppendLog(LogFile, "Exiting Distance")
Send !f!x  ; Select File=>Exit...
WinWaitActive Distance Confirmation
Send !y  ; Click Yes
Sleep %PauseTime%  ; Wait extra time for exit

;;;
;;; Clean up
;;;

FileDelete, %ProjectFile%.dst
FileRemoveDir, %ProjectFile%.dat, 1
CloseLog(LogFile)
