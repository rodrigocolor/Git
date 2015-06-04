program Sistema_Seguro;

uses
  Vcl.Forms,
  unFormMenu in 'unFormMenu.pas' {unFormMenuP},
  Vcl.Themes,
  Vcl.Styles,
  unAtivacao in 'unAtivacao.pas',
  unFormAtivacao in 'unFormAtivacao.pas' {Form1},
  unFormCadastro in 'unFormCadastro.pas' {FormCadastro},
  unDmConexcao in 'unDmConexcao.pas' {Dmconexcao: TDataModule},
  unFormRelatorioB in 'unFormRelatorioB.pas' {FormRelB},
  unFormAlterarCad in 'unFormAlterarCad.pas' {unFormAlterarCadastro},
  unFuncoes in 'unFuncoes.pas',
  unFormCadastroUsuarios in 'unFormCadastroUsuarios.pas' {frmCadastroUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema para Controle de Seguros';
  Application.CreateForm(TDmconexcao, Dmconexcao);
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
