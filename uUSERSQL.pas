unit uUSERSQL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfUSERSQL = class(TForm)
    Panel1: TPanel;
    btnGetData: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    DBMemo1: TDBMemo;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    procedure btnGetDataClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUSERSQL: TfUSERSQL;

implementation

{$R *.dfm}

procedure TfUSERSQL.btnGetDataClick(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.Open;
end;

end.
