unit FrmMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmMenu = class(TForm)
    mmMenu: TMainMenu;
    Cadastros1: TMenuItem;
    Configuraes1: TMenuItem;
    Contrato1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    Cadastro1: TMenuItem;
    Consulta1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Gerar1: TMenuItem;
    BitBtn1: TBitBtn;
    procedure Sair1Click(Sender: TObject);
    procedure Gerar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses FRMPrincipal;


procedure TfrmMenu.Gerar1Click(Sender: TObject);
Var
Lform: TfrmContrato;
begin
try
LForm:= TfrmContrato.Create(nil);
Lform.ShowModal;
finally
FreeAndNil(Lform);
end;
end;


procedure TfrmMenu.Sair1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
