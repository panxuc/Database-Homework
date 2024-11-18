// ODBC1View.h : interface of the CODBC1View class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_ODBC1VIEW_H__D932DD4E_47E0_496C_9AF8_DB03DC64C092__INCLUDED_)
#define AFX_ODBC1VIEW_H__D932DD4E_47E0_496C_9AF8_DB03DC64C092__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CODBC1Set;

class CODBC1View : public CRecordView
{
protected: // create from serialization only
	CODBC1View();
	DECLARE_DYNCREATE(CODBC1View)

public:
	//{{AFX_DATA(CODBC1View)
	enum { IDD = IDD_ODBC1_FORM };
	CODBC1Set* m_pSet;
	//}}AFX_DATA

// Attributes
public:
	CODBC1Doc* GetDocument();

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CODBC1View)
	public:
	virtual CRecordset* OnGetRecordset();
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual BOOL OnMove(UINT nIDMoveCommand);
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	virtual void OnInitialUpdate(); // called first time after construct
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CODBC1View();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	BOOL m_bAdding;
	//{{AFX_MSG(CODBC1View)
	afx_msg void OnRecordAdd();
	afx_msg void OnRecordClearfields();
	afx_msg void OnRecordDelete();
	afx_msg void OnRecordUpdate();
	afx_msg void OnSortDeptno();
	afx_msg void OnSortDname();
	afx_msg void OnSortHead();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in ODBC1View.cpp
inline CODBC1Doc* CODBC1View::GetDocument()
   { return (CODBC1Doc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ODBC1VIEW_H__D932DD4E_47E0_496C_9AF8_DB03DC64C092__INCLUDED_)
