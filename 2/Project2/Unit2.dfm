�
 TFORM2 0;	  TPF0TForm2Form2LeftBTopsWidth�HeightxActiveControlPanel1CaptionForm2Color	clBtnFace
ParentFont	OldCreateOrder	PositionpoScreenCenterOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSplitter	Splitter1Left Top� Width�HeightCursorcrVSplitAlignalTopAutoSnapMinSize2  TPanelPanel1Left Top Width�Height!AlignalTop
BevelOuterbvNoneTabOrder  TDBNavigatorDBNavigatorLeftTopWidth� Height
DataSourceDataSource1Flat	Ctl3DParentCtl3DTabOrder    TPanelPanel2Left Top!Width�Height� AlignalTop
BevelOuterbvNoneCaptionPanel2TabOrder TDBGridDBGrid1Left Top Width�Height� AlignalClient
DataSourceDataSource1TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style    TPanelPanel3Left Top� Width�Height� AlignalClient
BevelOuterbvNoneCaptionPanel3TabOrder TDBGridDBGrid2Left Top Width�Height� AlignalClient
DataSourceDataSource2TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style    TQueryQuery1DatabaseNamestudentSQL.StringsSelect  "dept"."deptno",  "dept"."dname",  "dept"."head"From "dept" LeftiTop TIntegerFieldQuery1deptno	FieldNamedeptno  TStringFieldQuery1dname	FieldNamednameSize  TStringField
Query1head	FieldNamehead	FixedChar	Size
   TQueryQuery2DatabaseNamestudent
DataSourceDataSource1SQL.StringsSelect  "stu"."stno",  "stu"."name",  "stu"."age",  "stu"."monit",  "stu"."macr",  "stu"."micr",  "stu"."edate",  "stu"."deptno"
From "stu"Where  "stu"."deptno" =:"deptno" Left�Top	ParamDataDataType	ftIntegerNamedeptno	ParamType	ptUnknownSize   TStringField
Query2stno	FieldNamestno	FixedChar	Size
  TStringField
Query2name	FieldNamename  TIntegerField	Query2age	FieldNameage  TStringFieldQuery2monit	FieldNamemonit	FixedChar	Size
  TIntegerField
Query2macr	FieldNamemacr  TIntegerField
Query2micr	FieldNamemicr  TDateTimeFieldQuery2edate	FieldNameedate  TIntegerFieldQuery2deptno	FieldNamedeptno   TDataSourceDataSource1DataSetQuery1Left�Top  TDataSourceDataSource2DataSetQuery2Left�Top   