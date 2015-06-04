program Project2;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Service in 'Service.pas',
  Thead in 'Thead.pas',
  Service2 in 'Service2.pas',
  servico3 in 'servico3.pas',
  CepTypes in 'CepTypes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
