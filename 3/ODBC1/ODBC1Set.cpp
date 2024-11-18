// ODBC1Set.cpp : implementation of the CODBC1Set class
//

#include "stdafx.h"
#include "ODBC1.h"
#include "ODBC1Set.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CODBC1Set implementation

IMPLEMENT_DYNAMIC(CODBC1Set, CRecordset)

CODBC1Set::CODBC1Set(CDatabase* pdb)
	: CRecordset(pdb)
{
	//{{AFX_FIELD_INIT(CODBC1Set)
	m_deptno = 0;
	m_dname = _T("");
	m_head = _T("");
	m_nFields = 3;
	//}}AFX_FIELD_INIT
	m_nDefaultType = snapshot;
}

CString CODBC1Set::GetDefaultConnect()
{
	return _T("ODBC;DSN=student");
}

CString CODBC1Set::GetDefaultSQL()
{
	return _T("[sql47].[dept]");
}

void CODBC1Set::DoFieldExchange(CFieldExchange* pFX)
{
	//{{AFX_FIELD_MAP(CODBC1Set)
	pFX->SetFieldType(CFieldExchange::outputColumn);
	RFX_Long(pFX, _T("[deptno]"), m_deptno);
	RFX_Text(pFX, _T("[dname]"), m_dname);
	RFX_Text(pFX, _T("[head]"), m_head);
	//}}AFX_FIELD_MAP
}

/////////////////////////////////////////////////////////////////////////////
// CODBC1Set diagnostics

#ifdef _DEBUG
void CODBC1Set::AssertValid() const
{
	CRecordset::AssertValid();
}

void CODBC1Set::Dump(CDumpContext& dc) const
{
	CRecordset::Dump(dc);
}
#endif //_DEBUG
