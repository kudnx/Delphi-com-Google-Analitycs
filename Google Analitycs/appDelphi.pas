unit appDelphi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, softMeter_globalVar, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  dllSoftMeter.sendEvent('Relatorio', 'Vendas no periodo', 1)
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TThread.CreateAnonymousThread(
    procedure
    begin
       dllSoftMeter.sendScreenView('Tela Principal')
    end
    )
end
end.
