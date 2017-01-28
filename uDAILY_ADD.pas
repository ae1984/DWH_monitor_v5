unit uDAILY_ADD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfDAILY_ADD = class(TForm)
    Panel1: TPanel;
    btnRefresh_data: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure btnRefresh_dataClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDAILY_ADD: TfDAILY_ADD;

implementation

{$R *.dfm}

procedure TfDAILY_ADD.btnRefresh_dataClick(Sender: TObject);
begin
   ADOQuery1.Close;
   ADOQuery1.Open;
end;

procedure TfDAILY_ADD.FormShow(Sender: TObject);
begin
   btnRefresh_data.Click;
end;

end.
