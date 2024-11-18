// ODBC1View.cpp : implementation of the CODBC1View class
//

#include "stdafx.h"
#include "ODBC1.h"

#include "ODBC1Set.h"
#include "ODBC1Doc.h"
#include "ODBC1View.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CODBC1View

IMPLEMENT_DYNCREATE(CODBC1View, CRecordView)

BEGIN_MESSAGE_MAP(CODBC1View, CRecordView)
	//{{AFX_MSG_MAP(CODBC1View)
	ON_COMMAND(ID_RECORD_ADD, OnRecordAdd)
	ON_COMMAND(ID_RECORD_CLEARFIELDS, OnRecordClearfields)
	ON_COMMAND(ID_RECORD_DELETE, OnRecordDelete)
	ON_COMMAND(ID_RECORD_UPDATE, OnRecordUpdate)
	ON_COMMAND(ID_SORT_DEPTNO, OnSortDeptno)
	ON_COMMAND(ID_SORT_DNAME, OnSortDname)
	ON_COMMAND(ID_SORT_HEAD, OnSortHead)
	//}}AFX_MSG_MAP
	// Standard printing commands
	ON_COMMAND(ID_FILE_PRINT, CRecordView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, CRecordView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, CRecordView::OnFilePrintPreview)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CODBC1View construction/destruction

CODBC1View::CODBC1View()
	: CRecordView(CODBC1View::IDD)
{
	//{{AFX_DATA_INIT(CODBC1View)
	m_pSet = NULL;
	//}}AFX_DATA_INIT
	// TODO: add construction code here
	m_bAdding = FALSE;
}

CODBC1View::~CODBC1View()
{
}

void CODBC1View::DoDataExchange(CDataExchange* pDX)
{
	CRecordView::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CODBC1View)
	DDX_FieldText(pDX, IDC_DEPTNO, m_pSet->m_deptno, m_pSet);
	DDX_FieldText(pDX, IDC_DNAME, m_pSet->m_dname, m_pSet);
	DDX_FieldText(pDX, IDC_HEAD, m_pSet->m_head, m_pSet);
	//}}AFX_DATA_MAP
}

BOOL CODBC1View::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CRecordView::PreCreateWindow(cs);
}

void CODBC1View::OnInitialUpdate()
{
	m_pSet = &GetDocument()->m_oDBC1Set;
	CRecordView::OnInitialUpdate();
	GetParentFrame()->RecalcLayout();
	ResizeParentToFit();

}

/////////////////////////////////////////////////////////////////////////////
// CODBC1View printing

BOOL CODBC1View::OnPreparePrinting(CPrintInfo* pInfo)
{
	// default preparation
	return DoPreparePrinting(pInfo);
}

void CODBC1View::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add extra initialization before printing
}

void CODBC1View::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add cleanup after printing
}

/////////////////////////////////////////////////////////////////////////////
// CODBC1View diagnostics

#ifdef _DEBUG
void CODBC1View::AssertValid() const
{
	CRecordView::AssertValid();
}

void CODBC1View::Dump(CDumpContext& dc) const
{
	CRecordView::Dump(dc);
}

CODBC1Doc* CODBC1View::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CODBC1Doc)));
	return (CODBC1Doc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CODBC1View database support
CRecordset* CODBC1View::OnGetRecordset()
{
	return m_pSet;
}


/////////////////////////////////////////////////////////////////////////////
// CODBC1View message handlers

void CODBC1View::OnRecordAdd() 
{
	// TODO: Add your command handler code here
	m_pSet->AddNew();
	m_bAdding = TRUE;
	// 将第一个字段改为可读写
	CEdit *pCtrl = (CEdit *)GetDlgItem(IDC_DEPTNO);
	int result = pCtrl->SetReadOnly(FALSE);
	UpdateData(FALSE);
}

void CODBC1View::OnRecordClearfields() 
{
	// TODO: Add your command handler code here
	m_pSet->SetFieldNull(NULL);
	UpdateData(FALSE);
}

void CODBC1View::OnRecordDelete() 
{
	// TODO: Add your command handler code here
	try {
		m_pSet->Delete();
	}
	catch (CDBException *e) {
		AfxMessageBox(e->m_strError);
		e->Delete();
		m_pSet->MoveFirst();
		UpdateData(FALSE);
		return;
	}
	if (m_pSet->IsEOF())
		m_pSet->MoveLast();
	if (m_pSet->IsBOF())
		m_pSet->SetFieldNull(NULL);
	UpdateData(FALSE);
}

void CODBC1View::OnRecordUpdate() 
{
	// TODO: Add your command handler code here
	m_pSet->Edit();
	UpdateData(TRUE);
	if (m_pSet->CanUpdate())
		m_pSet->Update();
}

BOOL CODBC1View::OnMove(UINT nIDMoveCommand) 
{
	// TODO: Add your specialized code here and/or call the base class
	if (m_bAdding) {
		m_bAdding = FALSE;
		UpdateData(TRUE);
		// 调用 Update
		if (m_pSet->CanUpdate())
		m_pSet->Update();
		//将增加的记录移动到最后
		if (!m_pSet->IsEOF())
		m_pSet->MoveLast();
		m_pSet->Requery();
		UpdateData(FALSE);
		// 将第一个字段恢复为只读
		CEdit *pCtrl = (CEdit *)GetDlgItem(IDC_DEPTNO);
		pCtrl->SetReadOnly(TRUE);
		return TRUE;
	}
	else {
		switch (nIDMoveCommand)
		{
		case ID_RECORD_PREV:
			m_pSet->MovePrev();
			if (!m_pSet->IsEOF())
				break;
		case ID_RECORD_FIRST:
			m_pSet->MoveFirst();
			break;
		case ID_RECORD_NEXT:
			m_pSet->MoveNext();
			if (!m_pSet->IsEOF())
				break;
			if (!m_pSet->CanScroll()){
				m_pSet->SetFieldNull(NULL);
				break;
			}
		case ID_RECORD_LAST:
			m_pSet->MoveLast();
			break;
		default:
			ASSERT(FALSE);
		}
		UpdateData(FALSE); // 显示移动操作的结果
		return TRUE;
	}
	return CRecordView::OnMove(nIDMoveCommand);
}

void CODBC1View::OnSortDeptno()
{
	// 对 m_pSet 按 deptno 排序
	try {
		m_pSet->m_strSort = _T("deptno ASC");
		m_pSet->Requery();  // 重新查询记录集
		m_pSet->MoveFirst();  // 移动到第一个记录
		UpdateData(FALSE);  // 刷新界面数据
	} catch (CDBException *e) {
		AfxMessageBox(e->m_strError);
		e->Delete();
	}
}

void CODBC1View::OnSortDname()
{
	// 对 m_pSet 按 dname 排序
	try {
		m_pSet->m_strSort = _T("dname ASC");
		m_pSet->Requery();  // 重新查询记录集
		m_pSet->MoveFirst();  // 移动到第一个记录
		UpdateData(FALSE);  // 刷新界面数据
	} catch (CDBException *e) {
		AfxMessageBox(e->m_strError);
		e->Delete();
	}
}

void CODBC1View::OnSortHead()
{
	// 对 m_pSet 按 head 排序
	try {
		m_pSet->m_strSort = _T("head ASC");
		m_pSet->Requery();  // 重新查询记录集
		m_pSet->MoveFirst();  // 移动到第一个记录
		UpdateData(FALSE);  // 刷新界面数据
	} catch (CDBException *e) {
		AfxMessageBox(e->m_strError);
		e->Delete();
	}
}

