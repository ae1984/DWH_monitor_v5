unit uETL_STAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfETL_STAT = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ADOQuery1: TADOQuery;
    btnRefresh_data: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure btnRefresh_dataClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fETL_STAT: TfETL_STAT;

implementation

{$R *.dfm}

procedure TfETL_STAT.btnRefresh_dataClick(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.Open;
end;

end.
