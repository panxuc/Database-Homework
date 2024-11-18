unit Unit2;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, DBTables, Grids, ExtCtrls;

type
  TForm2 = class(TForm)
    Query1deptno: TIntegerField;
    Query1dname: TStringField;
    Query1head: TStringField;
    Query2stno: TStringField;
    Query2name: TStringField;
    Query2age: TIntegerField;
    Query2monit: TStringField;
    Query2macr: TIntegerField;
    Query2micr: TIntegerField;
    Query2edate: TDateTimeField;
    Query2deptno: TIntegerField;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Query1: TQuery;
    Query2: TQuery;
    DataSource2: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}

procedure TForm2.FormCreate(Sender: TObject);
begin
  Query1.Open;
  Query2.Open;
end;

end.