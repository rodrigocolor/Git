program Projeto;

uses
  Vcl.Forms,
  Form in 'Form.pas' {Form1},
  unFuncoes in 'unFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
