// ODBC1Set.h : interface of the CODBC1Set class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_ODBC1SET_H__18A996A4_F405_4BEC_A814_296D9FBD7997__INCLUDED_)
#define AFX_ODBC1SET_H__18A996A4_F405_4BEC_A814_296D9FBD7997__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CODBC1Set : public CRecordset
{
public:
	CODBC1Set(CDatabase* pDatabase = NULL);
	DECLARE_DYNAMIC(CODBC1Set)

// Field/Param Data
	//{{AFX_FIELD(CODBC1Set, CRecordset)
	long	m_deptno;
	CString	m_dname;
	CString	m_head;
	//}}AFX_FIELD

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CODBC1Set)
	public:
	virtual CString GetDefaultConnect();	// Default connection string
	virtual CString GetDefaultSQL(); 	// default SQL for Recordset
	virtual void DoFieldExchange(CFieldExchange* pFX);	// RFX support
	//}}AFX_VIRTUAL

// Implementation
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ODBC1SET_H__18A996A4_F405_4BEC_A814_296D9FBD7997__INCLUDED_)

