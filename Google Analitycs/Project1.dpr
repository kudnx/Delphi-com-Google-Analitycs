program Project1;

uses
  Vcl.Forms,
  appDelphi in 'appDelphi.pas' {Form1},
  softMeter_globalVar in 'softMeter_globalVar.pas',
  dll_loaderAppTelemetry in 'dll_loaderAppTelemetry.pas',
  dll_loader in 'dll_loader.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
