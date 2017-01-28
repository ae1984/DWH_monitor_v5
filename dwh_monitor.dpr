program dwh_monitor;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fMain},
  uETL_RUNNING in 'uETL_RUNNING.pas' {fNV_ETL_RUNNING},
  uNV_WAIT in 'uNV_WAIT.pas' {fNV_WAIT},
  uDAILY_ADD in 'uDAILY_ADD.pas' {fDAILY_ADD},
  uUSERSQL in 'uUSERSQL.pas' {fUSERSQL};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TfNV_ETL_RUNNING, fNV_ETL_RUNNING);
  Application.CreateForm(TfNV_WAIT, fNV_WAIT);
  Application.CreateForm(TfDAILY_ADD, fDAILY_ADD);
  Application.CreateForm(TfUSERSQL, fUSERSQL);
  Application.Run;
end.
