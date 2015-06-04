program Project2;

uses
  Vcl.Forms,
  formMAin in 'formMAin.pas' {Form1},
  CepTypes in 'CepTypes.pas',
  Service in 'Service.pas',
  Thead in 'Thead.pas',
  Service2 in 'Service2.pas',
  servico3 in 'servico3.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
