unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, ExtCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    ds1: TDataSource;
    tbl1: TTable;
    DBGrid1: TDBGrid;
    ds2: TDataSource;
    tbl2: TTable;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    ds3: TDataSource;
    tbl3: TTable;
    DBGrid3: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
