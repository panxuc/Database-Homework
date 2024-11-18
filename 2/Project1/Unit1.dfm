object Form1: TForm1
  Left = 203
  Top = 164
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 136
    Top = 24
    Width = 281
    Height = 81
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 136
    Top = 128
    Width = 665
    Height = 169
    DataSource = ds2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 440
    Top = 24
    Width = 240
    Height = 25
    DataSource = ds1
    TabOrder = 2
  end
  object DBGrid3: TDBGrid
    Left = 136
    Top = 320
    Width = 473
    Height = 137
    DataSource = ds3
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ds1: TDataSource
    DataSet = tbl1
    Left = 24
    Top = 24
  end
  object tbl1: TTable
    Active = True
    DatabaseName = 'student'
    TableName = 'dept'
    Left = 80
    Top = 24
  end
  object ds2: TDataSource
    DataSet = tbl2
    Left = 24
    Top = 128
  end
  object tbl2: TTable
    Active = True
    DatabaseName = 'student'
    IndexFieldNames = 'deptno'
    MasterFields = 'deptno'
    MasterSource = ds1
    TableName = 'stu'
    Left = 80
    Top = 128
  end
  object ds3: TDataSource
    DataSet = tbl3
    Left = 24
    Top = 320
  end
  object tbl3: TTable
    Active = True
    DatabaseName = 'student'
    IndexFieldNames = 'deptno'
    MasterFields = 'deptno'
    MasterSource = ds1
    TableName = 'teacher'
    Left = 80
    Top = 320
  end
end
