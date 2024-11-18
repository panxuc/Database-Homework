// ODBC1Doc.cpp : implementation of the CODBC1Doc class
//

#include "stdafx.h"
#include "ODBC1.h"

#include "ODBC1Set.h"
#include "ODBC1Doc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CODBC1Doc

IMPLEMENT_DYNCREATE(CODBC1Doc, CDocument)

BEGIN_MESSAGE_MAP(CODBC1Doc, CDocument)
	//{{AFX_MSG_MAP(CODBC1Doc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CODBC1Doc construction/destruction

CODBC1Doc::CODBC1Doc()
{
	// TODO: add one-time construction code here

}

CODBC1Doc::~CODBC1Doc()
{
}

BOOL CODBC1Doc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: add reinitialization code here
	// (SDI documents will reuse this document)

	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CODBC1Doc diagnostics

#ifdef _DEBUG
void CODBC1Doc::AssertValid() const
{
	CDocument::AssertValid();
}

void CODBC1Doc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CODBC1Doc commands
