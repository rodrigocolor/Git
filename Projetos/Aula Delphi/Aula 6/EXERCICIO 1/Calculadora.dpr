program Calculadora;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  unFuncoes in 'unFuncoes.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Calculadora';
  TStyleManager.TrySetStyle('Amakrits');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
