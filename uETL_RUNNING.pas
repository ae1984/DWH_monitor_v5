unit uETL_RUNNING;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfNV_ETL_RUNNING = class(TForm)
    Panel1: TPanel;
    btnRefresh_data: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure btnRefresh_dataClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNV_ETL_RUNNING: TfNV_ETL_RUNNING;

implementation

{$R *.dfm}

procedure TfNV_ETL_RUNNING.btnRefresh_dataClick(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.Open;
end;

end.
