// ODBC1Doc.h : interface of the CODBC1Doc class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_ODBC1DOC_H__4F9209CF_4310_4A07_BB1E_DC24241EC96A__INCLUDED_)
#define AFX_ODBC1DOC_H__4F9209CF_4310_4A07_BB1E_DC24241EC96A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
#include "ODBC1Set.h"


class CODBC1Doc : public CDocument
{
protected: // create from serialization only
	CODBC1Doc();
	DECLARE_DYNCREATE(CODBC1Doc)

// Attributes
public:
	CODBC1Set m_oDBC1Set;

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CODBC1Doc)
	public:
	virtual BOOL OnNewDocument();
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CODBC1Doc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CODBC1Doc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ODBC1DOC_H__4F9209CF_4310_4A07_BB1E_DC24241EC96A__INCLUDED_)
