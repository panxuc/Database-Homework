; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CODBC1View
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "ODBC1.h"
LastPage=0

ClassCount=6
Class1=CODBC1App
Class2=CODBC1Doc
Class3=CODBC1View
Class4=CMainFrame
Class6=CAboutDlg

ResourceCount=7
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Class5=CODBC1Set
Resource7=IDD_ODBC1_FORM

[CLS:CODBC1App]
Type=0
HeaderFile=ODBC1.h
ImplementationFile=ODBC1.cpp
Filter=N

[CLS:CODBC1Doc]
Type=0
HeaderFile=ODBC1Doc.h
ImplementationFile=ODBC1Doc.cpp
Filter=N

[CLS:CODBC1View]
Type=0
HeaderFile=ODBC1View.h
ImplementationFile=ODBC1View.cpp
Filter=D
BaseClass=CRecordView
VirtualFilter=RVWC
LastObject=ID_SORT_HEAD


[CLS:CODBC1Set]
Type=0
HeaderFile=ODBC1Set.h
ImplementationFile=ODBC1Set.cpp
Filter=N

[DB:CODBC1Set]
DB=1
DBType=ODBC
ColumnCount=3
Column1=[deptno], 4, 4
Column2=[dname], 12, 18
Column3=[head], 1, 10


[CLS:CMainFrame]
Type=0
HeaderFile=MainFrm.h
ImplementationFile=MainFrm.cpp
Filter=T
LastObject=CMainFrame
BaseClass=CFrameWnd
VirtualFilter=fWC




[CLS:CAboutDlg]
Type=0
HeaderFile=ODBC1.cpp
ImplementationFile=ODBC1.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[MNU:IDR_MAINFRAME]
Type=1
Class=CMainFrame
Command1=ID_FILE_PRINT
Command2=ID_FILE_PRINT_PREVIEW
Command3=ID_FILE_PRINT_SETUP
Command4=ID_APP_EXIT
Command5=ID_EDIT_UNDO
Command6=ID_EDIT_CUT
Command7=ID_EDIT_COPY
Command8=ID_EDIT_PASTE
Command9=ID_RECORD_FIRST
Command10=ID_RECORD_PREV
Command11=ID_RECORD_NEXT
Command12=ID_RECORD_LAST
Command13=ID_RECORD_ADD
Command14=ID_RECORD_CLEARFIELDS
Command15=ID_RECORD_DELETE
Command16=ID_RECORD_UPDATE
Command17=ID_VIEW_TOOLBAR
Command18=ID_VIEW_STATUS_BAR
Command19=ID_APP_ABOUT
Command20=ID_SORT_DEPTNO
Command21=ID_SORT_DNAME
Command22=ID_SORT_HEAD
CommandCount=22

[ACL:IDR_MAINFRAME]
Type=1
Class=CMainFrame
Command1=ID_FILE_PRINT
Command2=ID_EDIT_UNDO
Command3=ID_EDIT_CUT
Command4=ID_EDIT_COPY
Command5=ID_EDIT_PASTE
Command6=ID_EDIT_UNDO
Command7=ID_EDIT_CUT
Command8=ID_EDIT_COPY
Command9=ID_EDIT_PASTE
Command10=ID_NEXT_PANE
Command11=ID_PREV_PANE
CommandCount=11

[DLG:IDD_ODBC1_FORM]
Type=1
Class=CODBC1View
ControlCount=7
Control1=IDC_STATIC,button,1342178055
Control2=IDC_STATIC,static,1342308352
Control3=IDC_STATIC,static,1342308352
Control4=IDC_STATIC,static,1342308352
Control5=IDC_DEPTNO,edit,1350633600
Control6=IDC_DNAME,edit,1350631552
Control7=IDC_HEAD,edit,1350631552

[TB:IDR_MAINFRAME]
Type=1
Class=?
Command1=ID_EDIT_CUT
Command2=ID_EDIT_COPY
Command3=ID_EDIT_PASTE
Command4=ID_FILE_PRINT
Command5=ID_RECORD_FIRST
Command6=ID_RECORD_PREV
Command7=ID_RECORD_NEXT
Command8=ID_RECORD_LAST
Command9=ID_APP_ABOUT
CommandCount=9

