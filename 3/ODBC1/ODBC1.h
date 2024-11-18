// ODBC1.h : main header file for the ODBC1 application
//

#if !defined(AFX_ODBC1_H__E59451AC_5223_403C_BB71_5FDAB9906423__INCLUDED_)
#define AFX_ODBC1_H__E59451AC_5223_403C_BB71_5FDAB9906423__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CODBC1App:
// See ODBC1.cpp for the implementation of this class
//

class CODBC1App : public CWinApp
{
public:
	CODBC1App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CODBC1App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation
	//{{AFX_MSG(CODBC1App)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ODBC1_H__E59451AC_5223_403C_BB71_5FDAB9906423__INCLUDED_)
