object Form1: TForm1
  Left = 420
  Top = 220
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
    Left = 168
    Top = 64
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 168
    Top = 184
    Width = 320
    Height = 120
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 168
    Top = 304
    Width = 320
    Height = 120
    DataSource = DataSource3
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid4: TDBGrid
    Left = 168
    Top = 424
    Width = 320
    Height = 120
    DataSource = DataSource4
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid5: TDBGrid
    Left = 656
    Top = 16
    Width = 320
    Height = 120
    DataSource = DataSource5
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid6: TDBGrid
    Left = 656
    Top = 136
    Width = 320
    Height = 120
    DataSource = DataSource6
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid7: TDBGrid
    Left = 656
    Top = 256
    Width = 320
    Height = 120
    DataSource = DataSource7
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid8: TDBGrid
    Left = 656
    Top = 376
    Width = 320
    Height = 120
    DataSource = DataSource8
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid9: TDBGrid
    Left = 656
    Top = 496
    Width = 320
    Height = 120
    DataSource = DataSource9
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'student'
    TableName = 'supplyapply'
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 32
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 32
    Top = 32
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 32
    Top = 64
  end
  object DataSource4: TDataSource
    DataSet = Table4
    Left = 32
    Top = 96
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'student'
    IndexFieldNames = 'supplierno'
    MasterFields = 'supplierno'
    MasterSource = DataSource1
    TableName = 'supplier'
    Top = 32
  end
  object Table3: TTable
    Active = True
    DatabaseName = 'student'
    IndexFieldNames = 'partno'
    MasterFields = 'partno'
    MasterSource = DataSource1
    TableName = 'part'
    Top = 64
  end
  object Table4: TTable
    Active = True
    DatabaseName = 'student'
    IndexFieldNames = 'projectno'
    MasterFields = 'projectno'
    MasterSource = DataSource1
    TableName = 'project'
    Top = 96
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'student'
    SQL.Strings = (
      
        'select distinct s.suppliername from supplier s join supplyapply ' +
        'sa on s.supplierno = sa.supplierno where sa.projectno = 301')
    Top = 128
  end
  object DataSource5: TDataSource
    DataSet = Query1
    Left = 32
    Top = 128
  end
  object Query2: TQuery
    Active = True
    DatabaseName = 'student'
    SQL.Strings = (
      
        'select distinct pr.projectname from project pr join supplyapply ' +
        'sa on pr.projectno = sa.projectno where sa.supplierno = 101')
    Top = 160
  end
  object Query3: TQuery
    Active = True
    DatabaseName = 'student'
    SQL.Strings = (
      
        'select distinct pr.projectname from project pr join supplyapply ' +
        'sa on pr.projectno = sa.projectno join part pa on sa.partno = pa' +
        '.partno where pa.partcolor = '#39#32418#39)
    Top = 192
  end
  object Query4: TQuery
    Active = True
    DatabaseName = 'student'
    SQL.Strings = (
      
        'select distinct s.suppliername from supplier s join supplyapply ' +
        'sa on s.supplierno = sa.supplierno join project pr on pr.project' +
        'no = sa.projectno where s.supplieraddress = '#39#21271#20140#24066#28023#28096#21306#39' and pr.proj' +
        'ectaddress != '#39#21271#20140#24066#28023#28096#21306#39' and not exists (select 1 from supplyapply' +
        ' sa2 join part pa on sa2.partno = pa.partno where sa2.projectno ' +
        '= pr.projectno and pa.partcolor = '#39#32418#39')')
    Top = 224
  end
  object Query5: TQuery
    Active = True
    DatabaseName = 'student'
    SQL.Strings = (
      
        'select distinct pr.projectname from project pr join supplyapply ' +
        'sa on pr.projectno = sa.projectno where sa.supplierno = 101 and ' +
        'not exists (select 1 from supplyapply sa2 where sa2.supplierno =' +
        ' 101 and sa2.partno not in (select sa3.partno from supplyapply s' +
        'a3 where sa3.projectno = sa.projectno))')
    Top = 256
  end
  object DataSource6: TDataSource
    DataSet = Query2
    Left = 32
    Top = 160
  end
  object DataSource7: TDataSource
    DataSet = Query3
    Left = 32
    Top = 192
  end
  object DataSource8: TDataSource
    DataSet = Query4
    Left = 32
    Top = 224
  end
  object DataSource9: TDataSource
    DataSet = Query5
    Left = 32
    Top = 256
  end
end
