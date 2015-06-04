unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lblNome: TLabel;
    lblSobrenom: TLabel;
    edtNome: TEdit;
    edtSobrenome: TEdit;
    btnNome: TButton;
    btnSobre: TButton;
    CbbNome: TComboBox;
    cbbSobrenome: TComboBox;
    btnNomeCompleto: TButton;
    procedure btnNomeClick(Sender: TObject);
    procedure btnSobreClick(Sender: TObject);
    procedure btnNomeCompletoClick(Sender: TObject);
    procedure CbbNomeChange(Sender: TObject);
    procedure cbbSobrenomeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnNomeClick(Sender: TObject);
begin
  // add to list in cb
  CbbNome.Items.Add(edtNome.Text);
  // set last added in cb
  CbbNome.ItemIndex := CbbNome.Items.Count - 1;
end;

procedure TfrmPrincipal.btnNomeCompletoClick(Sender: TObject);
var
  nomeCom: string;
begin
  // junta e mostra o nome completo
  nomeCom := CbbNome.Text + ' ' + cbbSobrenome.Text;
  MessageDlg(nomeCom, mtInformation, [mbOK], 0);
end;

procedure TfrmPrincipal.btnSobreClick(Sender: TObject);
begin
  // add to list in cb
  cbbSobrenome.Items.Add(edtSobrenome.Text);
  // set last added in cb
  cbbSobrenome.ItemIndex := cbbSobrenome.Items.Count - 1;
end;

procedure TfrmPrincipal.CbbNomeChange(Sender: TObject);
begin
cbbSobrenome.ItemIndex:= CbbNome.ItemIndex;
end;

procedure TfrmPrincipal.cbbSobrenomeChange(Sender: TObject);
begin
CbbNome.ItemIndex:= cbbSobrenome.ItemIndex;
end;

end.
